variable "fqdn" {
  type        = string
  description = "O FQDN (Fully Qualified Domain Name) do website e também o nome do bucket S3"
}

variable "allowed_ips" {
  type        = list(string)
  description = "Uma lista de IPs que podem acessar o bucket S3 diretamente"
}

variable "refer_secret" {
  type        = string
  description = "Uma secret (string) para que requests do CF possam autenticar no S3"
}

variable "index_document" {
  type        = string
  description = "Arquivo html para servir de documento root"
}

variable "error_document" {
  type        = string
  description = "Arquivo html para página de erro (404)"
}

variable "routing_rules" {
  type        = string
  description = "Regras de roteamento para o bucket S3"
}

variable "force_destroy" {
  type        = string
  description = "Indicador para force_destroy no S3 bucket"
}

variable "tags" {
  description = "Tags comuns para o ambiente"
  type        = map(string)
}

variable "create_index_object" {
  description = "Indica se deve criar um objeto index de teste"
  type        = bool
}