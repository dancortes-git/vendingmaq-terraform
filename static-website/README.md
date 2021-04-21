# static-website

Folder that contains terraform scripts used to create a static website using Cloudfront and S3.
In the output of the execution we will have the information of the bucket ID and Cloudfront distribution ID. We will use these informations in the pipeline to deploy the static website.

- **cf_distribution_id:** Cloudfront distribution ID
- **s3_bucket_id:** Bucket ID

For each environment is necessary to create a folder that contains the following contents:
- **ENVIRONMENT/modules.tf**: Contains the call to main module
- **ENVIRONMENT/outputs.tf**: Contains the values that will be displayed in the output
- **ENVIRONMENT/state.tf**: Contains information about the terraform state (bucket s3)
- **ENVIRONMENT/variables.tf**: Contains the variables used for the environment. In the variables section below you can see the main variables to be used.

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

## Variables

The file `ENVIRONMENT/variables.tf` contains the variables that needs to be updated in order to run this script.

- `aws_profile`: Local profile to be used. Example: "terraform-dev".
- `ssl_certificate_arn`: ARN of the certificate, collected in the certificate manager (AWS). Example: "arn:aws:acm:(RegionName)(AccountID):certificate/(ID)"
- `environment`: Environment (ex: dev, qa, prod, arch).
- `tags`: Common tags that will be applied in the resources.
- `fqdn`: The FQDN (Fully Qualified Domain Name) of website. Example: vendingmaq.com.br


### References

- [Github repo with terraform scripts](https://github.com/riboseinc/terraform-aws-s3-cloudfront-website)
- [AWS - Docs: How to configure a bucket S3 to host a static website](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/user-guide/static-website-hosting.html)
- [AWS - Docs: Configuring a static website](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/dev/HostingWebsiteOnS3Setup.html)
- [HELM](https://helm.sh/docs/)
- [Terraform](https://www.terraform.io/docs)
- [Terraform Registry](https://registry.terraform.io/)

## TO DO

- TBD
