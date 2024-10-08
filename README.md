﻿# Localstack

## O que é?

LocalStack é uma ferramenta que simula os serviços da AWS localmente. Ele permite que desenvolvedores testem e integrem serviços da AWS sem a necessidade de interagir com a nuvem real, o que pode economizar custos e facilitar o desenvolvimento.



## Para rodar este projeto é necessário

📌 [Localstack](https://www.localstack.cloud/) </br>
📌 [Docker](https://www.docker.com/)

## Instalações

1. Instale o [docker desktop](https://www.youtube.com/watch?v=Lgh8JgcYFwM)
2. Inicie o docker desktop
3. Faça [cadastro no Localstack](https://www.localstack.cloud/)

  
4. Abra um terminal e instale o cli do localstack com:
```bash
   pip install localstack
```
5. Confirme se o seu docker está instalado corretamente:
```bash
   docker -v
```
6. Abra um terminal e rode:
```bash
   localstack start
```
## Rodando o projeto 

1. Em outro terminal suba a imagem do terraform:
```bash
   docker build -t terraform-image .
``` 
2. Configure a AWS (pode ser dados fictícios nao precisa ser realmente da AWS):
```bash
   docker run --rm -it amazon/aws-cli configure
```
Responda da seguinte forma:
```
AWS Access Key ID [None]: test
AWS Secret Access Key [None]: test
Default region name [None]: us-east-1
Default output format [None]: json
```
3. Inicie o terraform:
```bash
   docker run --rm -it -v "$PWD/infra:/workspace" terraform-image init
```
4. Planeje a aplicação do Terraform:
```bash
   docker run --rm -it -v "$PWD/infra:/workspace" terraform-image plan
```
5. Aplique a configuração do Terraform:
```bash
   docker run --rm -it -v "$PWD/infra:/workspace" terraform-image apply
```

## Desenho do projeto:

<img width="4301" alt="arquitetura SQS smclick" src="https://github.com/user-attachments/assets/b00f7ae5-50f4-44f6-a459-13d52b735de2">
