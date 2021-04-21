output "s3_bucket_id" {
  value = aws_s3_bucket.main.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.main.arn
}

output "s3_hosted_zone_id" {
  value = aws_s3_bucket.main.hosted_zone_id
}

output "website_endpoint" {
  value = aws_s3_bucket.main.website_endpoint
}
