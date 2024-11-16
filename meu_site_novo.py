from flask import Flask, render_template, request, redirect, url_for
from fpdf import FPDF
import mariadb
import datetime
import locale
import webbrowser
import os
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
# from w.webdriver.common.keys import Keys
import PyPDF2

# Configurando a localização para o Brasil
locale.setlocale(locale.LC_ALL, 'pt_BR.UTF-8')

app = Flask(__name__)

# Rota para logout
@app.route('/logout', methods=['POST'])
def logout():
    return redirect(url_for('login'))

# Rota para login
@app.route("/")
def login():
    return render_template("tela_login.html")

# Rota para homepage
@app.route("/homepage.html")
def homepage():
    return render_template("homepage.html")

# Função para criar conexão com o banco
def criar_conexao():
    return mariadb.connect(
        user="ousuario",
        password="494fbcb7102a",
        host="database-cloud.cfsoais6adzp.us-east-1.rds.amazonaws.com",
        port=3306,
        database="banco2.0"
    )

# Rota e função para salvar no banco
@app.route("/salvar", methods=['GET', 'POST'])
def salvar_dados():
    if request.method == 'POST':
        cliente = request.form['cliente']
        endereco = request.form['endereco']
        telefone = request.form['telefone']
        descricao_projeto = request.form['descricao']
        carga_horária = float(request.form['execucao']) if request.form['execucao'] else 0
        valor_hora = float(request.form['hora']) if request.form['hora'] else 0
        valor_material = float(request.form['material']) if request.form['material'] else 0
        prazo = request.form['entrega']
        valor_final = carga_horária * valor_hora + valor_material
        
        data_orcamento = datetime.datetime.now().strftime('%d/%m/%Y')

        conexao = criar_conexao()
        sql = conexao.cursor()

        try:
            sql.execute("INSERT INTO clientes(data_orcamento, orcamento, cliente, endereco, telefone, descricao_projeto, carga_horária, valor_hora, valor_material, prazo, valor_final) VALUES (?,?,?,?,?,?,?,?,?,?,?)", 
                        (data_orcamento, None, cliente, endereco, telefone, descricao_projeto, carga_horária, valor_hora, valor_material, prazo, valor_final))
            conexao.commit()

            # Gerando o PDF
            orcamento_id = sql.lastrowid
            pdf = FPDF()
            pdf.add_font('Arial', '', 'C:/Windows/Fonts/arial.ttf', uni=True)
            pdf.add_page()
            pdf.set_font('Arial', 'B', 14)
            pdf.image("C:/Sistema/static/orcamento.png", x=0, y=0)
            pdf.set_text_color(255, 255, 255)
            pdf.text(173, 13, str(orcamento_id))
            pdf.text(173, 26, data_orcamento)
            pdf.text(73, 146, cliente)
            pdf.text(73, 160, endereco)
            pdf.text(73, 174, telefone)
            pdf.text(73, 188, descricao_projeto)
            pdf.text(95, 203, str(prazo))
            pdf.text(95, 218, locale.currency(valor_final, grouping=True))
            filename = f'C:/Sistema/orcamento/Orçamento_{orcamento_id}.pdf'
            pdf.output(filename)

            print(f'Orçamento gerado com sucesso! Nome do arquivo: {filename}')
            return render_template("/homepage.html")
        except mariadb.Error as e:
            print(f"Erro ao salvar os dados: {e}")
            return "Erro ao salvar os dados"
        finally:
            sql.close()
            conexao.close()

# Rota para enviar orçamento
@app.route("/enviar_orcamento", methods=['GET'])
def enviar_orcamento():
    try:
        # Localizar o último PDF gerado
        path = "C:/Sistema/orcamento"
        arquivos = [f for f in os.listdir(path) if f.endswith('.pdf')]
        arquivos.sort(key=lambda x: os.path.getmtime(os.path.join(path, x)), reverse=True)
        ultimo_pdf = os.path.join(path, arquivos[0]) if arquivos else None

        if ultimo_pdf:
            # Abrir o PDF e extrair o nome do cliente
            with open(ultimo_pdf, "rb") as file:
                reader = PyPDF2.PdfReader(file)
                page = reader.pages[0]
                text = page.extract_text()
                
                # Extrair o nome do cliente da descrição
                linhas = text.split('\n')
                cliente = linhas[2].strip()  # Certifique-se de que não há espaços desnecessários

            user_data_dir = os.path.join(os.getcwd(), "chrome_profile")
            whatsapp_url = "https://web.whatsapp.com"
            options = webdriver.ChromeOptions()
            options.add_argument(f"--user-data-dir={user_data_dir}")
            options.add_argument("--start-maximized")

            chrome_driver_path = "C:/chromedriver/chromedriver.exe"
            service = Service(chrome_driver_path)

            driver = webdriver.Chrome(service=service, options=options)

            driver.get(whatsapp_url)
            time.sleep(15)
            WebDriverWait(driver, 15).until(EC.presence_of_element_located((By.XPATH, '//div[@contenteditable="true"][@data-tab="3"]')))
            
            # Pesquisar contato
            search_box = driver.find_element(By.XPATH, '//div[@contenteditable="true"][@data-tab="3"]')
            search_box.send_keys(cliente)
            time.sleep(5)  # Aguardar um pouco para resultados aparecerem

            # Selecionar o contato e clicar
            WebDriverWait(driver, 15).until(EC.presence_of_element_located((By.XPATH, f'//span[@title="{cliente}"]')))
            contato = driver.find_element(By.XPATH, f'//span[@title="{cliente}"]')
            contato.click()  # Clica no contato
            time.sleep(8)  # Aguardar a abertura do chat

            # Anexar o PDF
            attach_button = driver.find_element(By.XPATH, '//div[@title="Anexar"]')
            attach_button.click()
            time.sleep(4)

            file_input = driver.find_element(By.XPATH, '//input[@type="file"]')
            file_input.send_keys(ultimo_pdf)
            time.sleep(5)

            # Novo XPath para o envio do anexo
            enviar_anexo_button = driver.find_element(By.XPATH, '//*[@id="app"]/div/div[2]/div[2]/div[2]/span/div/div/div/div[2]/div/div[2]/div[2]/div/div/span')
            enviar_anexo_button.click()
            time.sleep(4)

            # Mensagem de sucesso e redirecionamento
            print("Orçamento enviado com sucesso!")
            time.sleep(5)  # Pausa por 5 segundos
            return redirect(url_for('homepage'))  # Redireciona para a homepage

        else:
            return "Nenhum orçamento encontrado."

    except mariadb.Error as e:
        print(f"Erro ao consultar o banco de dados: {e}")
        return "Erro ao consultar o banco de dados."

    except Exception as e:
        print(f"Ocorreu um erro: {e}")
        return "Ocorreu um erro ao enviar o orçamento."

# Colocar o site no ar
if __name__ == "__main__":
    #webbrowser.open(url='http://127.0.0.1:5000', new=1, autoraise=True)
    app.run(host="0.0.0.0", port=5000)