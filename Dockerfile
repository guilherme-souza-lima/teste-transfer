# Usa a imagem oficial do Python como base
FROM python:3.12-slim-bullseye

# Instala as dependências necessárias para o MariaDB e outras dependências de compilação
RUN apt-get update && apt-get install -y \
    build-essential \
    libmariadb-dev \
    libssl-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Atualiza o pip
RUN pip install --upgrade pip

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de requisitos e o código para o diretório de trabalho
COPY requirements.txt /app/
COPY templates /app/
COPY static /app/
COPY orcamento /app/
COPY Icone /app/
COPY meu_site_novo.py /app/

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expondo a porta padrão do Flask (5000)
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "meu_site_novo.py"]
