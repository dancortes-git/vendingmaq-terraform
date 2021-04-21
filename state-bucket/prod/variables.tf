variable "aws_profile" {
  description = "Profile local a ser utilizado"
  type        = string
  default     = "terraform-dancortes"
}

variable "aws_region" {
  description = "Regiao AWS"
  type        = string
  default     = "us-east-1"
}

variable "state_bucket_name" {
  description = "Nome do bucket a ser criado"
  type        = string
  default     = "s3-tf-state-vendingmaq-prod"
}

variable "tags" {
  description = "Tags comuns para o ambiente"
  type        = map(string)

  default = {
    company                  = "vendingmaq"
    environment              = "prod"
  }
}