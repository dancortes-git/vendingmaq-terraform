# vendingmaq-terraform

Repository to maintain the terraform scripts for Vendingmaq

- The folder static-website contains scripts to create a static website using AWS S3 and Cloudfront. There are more details in the readme inside of the folder.

## Requirements

Below you can see the list of elements that need to be installed and configured to run this script:

- `terraform`: Version 0.14.6 or newest.
- `aws cli`: Version 2.0.61 or newest.
- `aws profile`: The aws account credentials must be configured in the file: '~/.aws/credentials'.
 - Example:
   - ```
      [default]
      aws_access_key_id = (ACCESS_KEY_DEFAULT)
      aws_secret_access_key = (SECRET_KEY_DEFAULT)
      region = us-east-1
      output = json
      [terraform-arch]
      aws_access_key_id = (ACCESS_KEY_AMBIENTE_ARCH)
      aws_secret_access_key = (SECRET_KEY_AMBIENTE_ARCH)
      region = us-east-1
      output = json
      [terraform-prod]
      aws_access_key_id = (ACCESS_KEY_AMBIENTE_PROD)
      aws_secret_access_key = (SECRET_KEY_AMBIENTE_PROD)
      region = us-east-1
      output = json
     ```

### References

- [Github repo with terraform scripts](https://github.com/riboseinc/terraform-aws-s3-cloudfront-website)
- [AWS - Docs: How to configure a bucket S3 to host a static website](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/user-guide/static-website-hosting.html)
- [AWS - Docs: Configuring a static website](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/dev/HostingWebsiteOnS3Setup.html)
- [HELM](https://helm.sh/docs/)
- [Terraform](https://www.terraform.io/docs)
- [Terraform Registry](https://registry.terraform.io/)

## TO DO

- TBD