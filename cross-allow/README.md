# INF-tf-s3 cross-allow

Terraform module for creating a aws s3 cross-allow bucket

NOTE: bucket names have to be unique __globally__

NOTE: full bucket name will be ${environment}-s3-cross-allow-${var.name}

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

Description: bucket name identifier

Type: `string`

### principal\_arns

Description: principal\_arns which get access (all permissions) to this bucket

Type: `list(string)`

## Optional Inputs

The following input variables are optional (have default values):

### tags

Description: common tags to add to the ressources

Type: `map(string)`

Default: `{}`

### versioning\_enabled

Description: if the bucket should be versioned

Type: `bool`

Default: `true`

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
module "fancy_cat" {
  source         = "github.com/ryte/INF-tf-s3//cross-allow?ref=v0.4.3"
  name           = "fancy-cat"
  tags           = local.common_tags
  environment    = var.environment
  principal_arns = ["arn:aws:iam::123456789012:role/rolename"]
}
```
