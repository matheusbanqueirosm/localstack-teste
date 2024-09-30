# Imagem oficial do Terraform
FROM hashicorp/terraform:latest

# Diretório de trabalho
WORKDIR /workspace

# Arquivo de configuração do Terraform para o contêiner
COPY . .

# Defina o entrypoint para permitir que comandos sejam passados
ENTRYPOINT ["terraform"]
