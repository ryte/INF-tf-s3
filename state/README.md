# INF-tf-s3 state

Terraform module for creating a aws s3 state bucket

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

### tags

Description: common tags to add to the ressources

Type: `map(string)`

Default: `{}`

### versioning\_enabled

Description: if bucket versioning is enabled

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
module "state" {
  source      = "github.com/ryte/INF-tf-s3//state?ref=v0.4.3"
  name        = var.remote_state_bucket
  tags        = local.common_tags
  environment = var.environment

  versioning_enabled  = true
}
```
