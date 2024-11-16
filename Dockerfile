# Imagem base
FROM python:3.12.3-slim

# Instalar locales
RUN apt-get update && apt-get install -y locales \
    && locale-gen pt_BR.UTF-8 \
    && update-locale LANG=pt_BR.UTF-8

# Definir a localidade no seu código
RUN export LANG=pt_BR.UTF-8

# Instalar dependências do sistema, incluindo o cliente MariaDB e as bibliotecas de desenvolvimento
RUN apt-get update && apt-get install -y \
    libmariadb-dev \
    gcc \
    python3-dev


# Criar diretório de trabalho
WORKDIR /app

# Copiar os arquivos necessários para o contêiner
COPY requirements.txt /app/
COPY templates /app/
COPY static /app/
COPY orcamento /app/
COPY Icone /app/
COPY meu_site_novo.py /app/

# Instalar as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta que o Flask vai rodar
EXPOSE 5000

# Comando para rodar a aplicação Flask
CMD ["python", "meu_site_novo.py"]
