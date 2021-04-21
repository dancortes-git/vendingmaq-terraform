output "s3_bucket_id" {
  value = module.static_website.s3_bucket_id
}

output "s3_bucket_arn" {
  value = module.static_website.s3_bucket_arn
}

output "s3_website_endpoint" {
  value = module.static_website.s3_website_endpoint
}

output "s3_hosted_zone_id" {
  value = module.static_website.s3_hosted_zone_id
}

output "cf_domain_name" {
  value = module.static_website.cf_domain_name
}

output "cf_hosted_zone_id" {
  value = module.static_website.cf_hosted_zone_id
}

output "cf_distribution_id" {
  value = module.static_website.cf_distribution_id
}