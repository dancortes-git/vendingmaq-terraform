# state bucket

Folder with scripts used to create a S3 Bucket that will store the Terraform state.

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

The file `variables.tf` contains the variables that needs to be updated in order to run this script.

- `state_bucket_name`: The name of the bucket to be create. Example: "s3-tf-state-arch".

### References

- [Terraform](https://www.terraform.io/docs)
- [Terraform Registry](https://registry.terraform.io/)

## TO DO

- TBD
