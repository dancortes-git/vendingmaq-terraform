module "s3" {
  source            = "../modules/s3"
  state_bucket_name = var.state_bucket_name
  aws_region        = var.aws_region
  tags              = var.tags
}