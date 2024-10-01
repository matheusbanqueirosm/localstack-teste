provider "aws" {
  region     = "us-east-1"
  
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  # Configura os endpoints para usar o LocalStack
  endpoints {
    sqs        = var.localstack_endpoint
    apigateway = var.localstack_endpoint
  }

  # Ignora a validação de credenciais, necessário ao usar LocalStack
  skip_credentials_validation = true  

  # Ignora a verificação da API de metadata, pois não é necessária no LocalStack
  skip_metadata_api_check     = true 

  # Evita a solicitação do ID da conta AWS, já que não estamos usando a conta real
  skip_requesting_account_id  = true 
}

# Recurso para criar a fila SQS principal
resource "aws_sqs_queue" "sm_main_queue" {
  name = "sm-main-queue"
}

# Recurso para criar a fila SQS Dead Letter Queue (DLQ)
resource "aws_sqs_queue" "sm_dlq" {
  name = "sm-dlq"
}

# Recurso para criar a API Gateway REST que se comunica com o SQS
resource "aws_api_gateway_rest_api" "sm-api-sqs" {
  name = "SMAPISQS"
}
