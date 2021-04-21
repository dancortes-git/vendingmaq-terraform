output "s3_bucket_id" {
  value = module.s3.s3_bucket_id
}

output "s3_bucket_arn" {
  value = module.s3.s3_bucket_arn
}

output "s3_website_endpoint" {
  # This doesn't work in terraform due to dependency issues:
  # https://github.com/terraform-providers/terraform-provider-aws/issues/1117
  # value = "${aws_s3_bucket.main.website_endpoint}"
  value = "${var.fqdn}.s3-website-${var.region}.amazonaws.com"
}

output "s3_hosted_zone_id" {
  value = module.s3.s3_hosted_zone_id
}

output "cf_domain_name" {
  value = module.cloudfront.cf_domain_name
}

output "cf_hosted_zone_id" {
  value = module.cloudfront.cf_hosted_zone_id
}

output "cf_distribution_id" {
  value = module.cloudfront.cf_distribution_id
}