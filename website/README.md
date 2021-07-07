# INF-tf-s3 website

Terraform module for creating a aws s3 bucket with enabled static website

NOTE: bucket names have to be unique __globally__

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

The following requirements are needed by this module:

- terraform (>= 0.12)

## Providers

The following providers are used by this module:

- aws

## Required Inputs

The following input variables are required:

### environment

Description: the environment this bucket is used for (e.g. 'testing')

Type: `string`

### name

Description: bucket name

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### policy

Description: bucket policy if needed

Type: `string`

Default: `""`

### tags

Description: common tags to add to the ressources

Type: `map(string)`

Default: `{}`

### versioning\_enabled

Description: if the bucket should be versioned

Type: `string`

Default: `false`

### versioning\_mfa\_delete

Description: Enable MFA delete for either Change the versioning state of your bucket or Permanently delete an object version

Type: `string`

Default: `false`

### website\_error\_document

Description: An absolute path to the document to return in case of a 4XX error

Type: `string`

Default: `"404.html"`

### website\_index\_document

Description: Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders

Type: `string`

Default: `"index.html"`

### website\_routing\_rules

Description: A json array containing routing rules describing redirect behavior and when redirects are applied

Type: `string`

Default: `""`

## Outputs

The following outputs are exported:

### arn

Description: bucket arn

### bucket

Description: bucket

### bucket\_regional\_domain\_name

Description: bucket name with region in domain

### id

Description: bucket id

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage

```hcl
module "website" {
  source      = "github.com/ryte/INF-tf-s3//website?ref=v0.4.3"
  name        = "fancy_name"
  tags        = local.common_tags
  environment = var.environment
  policy      = data.aws_iam_policy_document.s3_policy.json

  website_index_document = "index.html"
  website_error_document = "error.html"
}
```


### sample policy

```hcl
data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions = [
      "s3:*"
    ]
    resources = [
      "arn:aws:s3:::fancy_name/*"
    ]
    effect = "Allow"
    condition {
      test     = "IpAddress"
      variable = "aws:SourceIp"
      values   = ["212.114.226.240/32"]
    }
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}
```
