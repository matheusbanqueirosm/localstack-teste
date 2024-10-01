variable "aws_access_key" {
  type    = string
  default = "test" 
}

variable "aws_secret_key" {
  type    = string
  default = "test" 
}

variable "localstack_endpoint" {
  type    = string
  default = "http://host.docker.internal:4566"  
}
