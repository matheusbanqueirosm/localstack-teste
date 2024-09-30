provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation  = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true 

  endpoints {
    sqs = "http://host.docker.internal:4566"
  }
}

resource "aws_sqs_queue" "my_queue" {
  name = "my-queue"
}
