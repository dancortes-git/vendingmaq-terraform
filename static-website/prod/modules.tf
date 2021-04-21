module "static_website" {
  source = "../"

  aws_profile = var.aws_profile
  region      = var.region

  fqdn           = var.fqdn
  allowed_ips    = var.allowed_ips
  index_document = var.index_document
  error_document = var.error_document
  routing_rules  = var.routing_rules
  force_destroy  = var.force_destroy
  tags           = var.tags

  lambda_edge_enabled     = var.lambda_edge_enabled
  cf_ipv6_enabled         = var.cf_ipv6_enabled
  single_page_application = var.single_page_application
  spa_error_response_code = var.spa_error_response_code
  error_response_code     = var.error_response_code
  cloudfront_price_class  = var.cloudfront_price_class
  ssl_certificate_arn     = var.ssl_certificate_arn
  web_acl_id              = var.web_acl_id
  lambda_edge_arn_version = var.lambda_edge_arn_version

  aliases             = var.aliases
  environment         = var.environment
  create_index_object = var.create_index_object
  acceleration_status = var.acceleration_status

}