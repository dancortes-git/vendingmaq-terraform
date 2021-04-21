variable "lambda_edge_enabled" {
  type = bool
}

variable "cf_ipv6_enabled" {
  type = bool
}

variable "fqdn" {
  type        = string
  description = "O FQDN (Fully Qualified Domain Name) do website e também o nome do bucket S3"
}

variable "refer_secret" {
  type        = string
  description = "Uma secret (string) para que requests do CF possam autenticar no S3"
}

variable "index_document" {
  type        = string
  description = "Arquivo html para servir de documento root"
}

variable "single_page_application" {
  type = bool
}

variable "spa_error_response_code" {
  type        = string
  description = "Código de resposta para enviar em casos de 404 para single page application"
}

variable "error_response_code" {
  type        = string
  description = "Código de resposta para enviar em casos de 404"
}

variable "error_document" {
  type        = string
  description = "Arquivo html para página de erro (404)"
}

variable "cloudfront_price_class" {
  type        = string
  description = "PriceClass para distribuição CloudFront"
}

variable "ssl_certificate_arn" {
  description = "ARN do certificado digital"
  type        = string
}

variable "web_acl_id" {
  type        = string
  description = "WAF Web ACL ID para associar com a distribuição CloudFront, opcional"
}

variable "lambda_edge_arn_version" {
  type = string
}

variable "s3_website_endpoint" {
  type = string
}

variable "tags" {
  description = "Tags comuns para o ambiente"
  type        = map(string)
}

variable "aliases" {
  type        = list(string)
  description = "Qualquer outro domain aliases para adicionar na distribuição do Cloudfront"
}