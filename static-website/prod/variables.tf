###########################
# Environment Variables
###########################

variable "aws_profile" {
  description = "Profile local a ser utilizado"
  type        = string
  default     = "terraform-dancortes"
}

variable "ssl_certificate_arn" {
  description = "ARN do certificado digital"
  type        = string
  default     = "arn:aws:acm:us-east-1:260620655280:certificate/fafe78a4-1f73-400c-972a-5186e07fee42"
}

variable "environment" {
  description = "Ambiente (ex: dev, qa, prod, arch)"
  type        = string
  default     = "prod"
}

variable "tags" {
  description = "Tags comuns para o ambiente"
  type        = map(string)

  default = {
    company                  = "vendingmaq"
    environment              = "prod"
  }
}

variable "fqdn" {
  type        = string
  description = "O FQDN (Fully Qualified Domain Name) do website e também o nome do bucket S3"
  default     = "vendingmaq.com.br"
}

variable "aliases" {
  type        = list(string)
  description = "Qualquer outro domain aliases para adicionar na distribuição do Cloudfront"
  default     = ["www.vendingmaq.com.br"]
}

variable "allowed_ips" {
  type        = list(string)
  description = "Uma lista de IPs que podem acessar o bucket S3 diretamente"
  default     = ["0.0.0.0/0"]
}

variable "web_acl_id" {
  type        = string
  description = "WAF Web ACL ID para associar com a distribuição CloudFront, opcional"
  default     = ""
}

###########################
# Common Variables
###########################

variable "region" {
  description = "Regiao AWS"
  default     = "us-east-1"
}

variable "acceleration_status" {
  type        = string
  description = "The acceleration_status argument of the S3 bucket (warning: this is not possible right now for hosted sites, as bucket names cannot contain a dot.)"
  default     = "Suspended"
}

variable "force_destroy" {
  type        = string
  description = "Indicador para force_destroy no S3 bucket"
  default     = "false"
}

variable "routing_rules" {
  type        = string
  description = "Routing rules for the S3 bucket"
  default     = ""
}

variable "cloudfront_price_class" {
  type        = string
  description = "PriceClass para distribuição CloudFront"
  default     = "PriceClass_All"
}

variable "index_document" {
  type        = string
  description = "Arquivo html para servir de documento root"
  default     = "index.html"
}

variable "error_document" {
  type        = string
  description = "Arquivo html para página de erro (404)"
  default     = "index.html"
}

variable "error_response_code" {
  type        = string
  description = "Código de resposta para enviar em casos de 404"
  default     = "404"
}

variable "spa_error_response_code" {
  type        = string
  description = "Código de resposta para enviar em casos de 404 para single page application"
  default     = "200"
}

# value should be  "${lambda.arn}:${lambda.version}"
variable "lambda_edge_arn_version" {
  type    = string
  default = ""
}

variable "lambda_edge_enabled" {
  type    = bool
  default = false
}

variable "cf_ipv6_enabled" {
  type    = bool
  default = true
}

variable "single_page_application" {
  type    = bool
  default = false
}

variable "create_index_object" {
  description = "Indica se deve criar um objeto index de teste"
  type        = bool
  default     = true
}