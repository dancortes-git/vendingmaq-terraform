resource "aws_s3_bucket" "main" {
  bucket = var.fqdn
  acl    = "private"
  policy = templatefile("${path.module}/policy.json", {
    bucket_name  = var.fqdn,
    refer_secret = var.refer_secret
  })

  website {
    index_document = var.index_document
    error_document = var.error_document
    routing_rules  = var.routing_rules
  }

  force_destroy = var.force_destroy

  # Transfer acceleration is not possible right now for hosted sites,
  # as bucket names cannot contain a dot.
  # https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html

  # acceleration_status = var.acceleration_status

  tags = merge(
    var.tags,
    {
      "Name" = var.fqdn
    },
  )
}

resource "aws_s3_bucket_object" "this" {
  count = var.create_index_object ? 1 : 0

  bucket       = aws_s3_bucket.main.id
  key          = var.index_document
  source       = "${path.module}/${var.index_document}"
  content_type = "text/html"
}
