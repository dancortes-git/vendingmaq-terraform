terraform {
  backend "s3" {
    bucket  = "s3-tf-state-vendingmaq-prod"
    key     = "vendingmaq-website/terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform-dancortes"
  }
}
