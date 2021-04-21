module "secret" {
  source = "./modules/secret"
}

module "s3" {
  source = "./modules/s3"

  fqdn                = var.fqdn
  allowed_ips         = var.allowed_ips
  refer_secret        = module.secret.refer_secret
  index_document      = var.index_document
  error_document      = var.error_document
  routing_rules       = var.routing_rules
  force_destroy       = var.force_destroy
  create_index_object = var.create_index_object
  tags                = var.tags
}

module "cloudfront" {
  source = "./modules/cloudfront"

  lambda_edge_enabled     = var.lambda_edge_enabled
  cf_ipv6_enabled         = var.cf_ipv6_enabled
  fqdn                    = var.fqdn
  refer_secret            = module.secret.refer_secret
  index_document          = var.index_document
  single_page_application = var.single_page_application
  spa_error_response_code = var.spa_error_response_code
  error_response_code     = var.error_response_code
  error_document          = var.error_document
  cloudfront_price_class  = var.cloudfront_price_class
  ssl_certificate_arn     = var.ssl_certificate_arn
  web_acl_id              = var.web_acl_id
  lambda_edge_arn_version = var.lambda_edge_arn_version
  tags                    = var.tags
  s3_website_endpoint     = module.s3.website_endpoint
  aliases                 = var.aliases

}
