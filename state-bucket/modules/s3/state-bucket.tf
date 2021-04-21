resource "aws_s3_bucket" "state-bucket" {
  bucket = var.state_bucket_name
  acl    = "private"

  tags = merge(var.tags, map("Name", format("%s", var.state_bucket_name)), map("region", format("%s", var.aws_region)))
}