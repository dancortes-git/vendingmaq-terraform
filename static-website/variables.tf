###########################
# Environment Variables
###########################

variable "aws_profile" {
  description = "Profile local a ser utilizado"
  type        = string
}

variable "ssl_certificate_arn" {
  description = "ARN do certificado digital"
  type        = string
}

variable "environment" {
  description = "Ambiente (ex: dev, qa, prod, arch)"
  type        = string
}

variable "tags" {
  description = "Tags comuns para o ambiente"
  type        = map(string)
}

variable "fqdn" {
  type        = string
  description = "O FQDN (Fully Qualified Domain Name) do website e também o nome do bucket S3"
}

variable "aliases" {
  type        = list(string)
  description = "Qualquer outro domain aliases para adicionar na distribuição do Cloudfront"
}

variable "allowed_ips" {
  type        = list(string)
  description = "Uma lista de IPs que podem acessar o bucket S3 diretamente"
}

variable "web_acl_id" {
  type        = string
  description = "WAF Web ACL ID para associar com a distribuição CloudFront, opcional"
}

###########################
# Common Variables
###########################

variable "region" {
  description = "Regiao AWS"
}

variable "acceleration_status" {
  type        = string
  description = "The acceleration_status argument of the S3 bucket (warning: this is not possible right now for hosted sites, as bucket names cannot contain a dot.)"
}

variable "force_destroy" {
  type        = string
  description = "Indicador para force_destroy no S3 bucket"
}

variable "routing_rules" {
  type        = string
  description = "Routing rules for the S3 bucket"
}

variable "cloudfront_price_class" {
  type        = string
  description = "PriceClass para distribuição CloudFront"
}

variable "index_document" {
  type        = string
  description = "Arquivo html para servir de documento root"
}

variable "error_document" {
  type        = string
  description = "Arquivo html para página de erro (404)"
}

variable "error_response_code" {
  type        = string
  description = "Código de resposta para enviar em casos de 404"
}

variable "spa_error_response_code" {
  type        = string
  description = "Código de resposta para enviar em casos de 404 para single page application"
}

# value should be  "${lambda.arn}:${lambda.version}"
variable "lambda_edge_arn_version" {
  type = string
}

variable "lambda_edge_enabled" {
  type = bool
}

variable "cf_ipv6_enabled" {
  type = bool
}

variable "single_page_application" {
  type = bool
}

variable "create_index_object" {
  description = "Indica se deve criar um objeto index de teste"
  type        = bool
}