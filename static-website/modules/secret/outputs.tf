output "refer_secret" {
  value     = random_string.refer_secret.result
  sensitive = true
}