# INF-tf-s3 state

Terraform module for creating a aws s3 state bucket

NOTE: bucket names have to be unique __globally__

NOTE: full bucket name will be ${environment}-s3-state-${var.name}

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/onpage-org/teams/inf).

## Module Input Variables

variable "versioning" {}
variable "region" {}


- `bucket_name`
    -  __description__: bucket name identifier
    -  __type__: `string`

- `region`
    -  __description__: region in which the bucket should be deployed in
    -  __type__: `string`

- `tags`
    -  __description__: a map of tags which is added to all supporting ressources
    -  __type__: `map`
    -  __default__: {}

- `versioning`
    -  __description__: if the bucket should be versioned
    -  __type__: `string`

## Usage

```hcl
module "state" {
  tags        = "${local.common_tags}"
  bucket_name = "${var.remote_state_bucket}"
  versioning  = true
  region      = "${var.aws_region}"
  source      = "git@github.com:onpage-org/INF-tf-s3.git?ref=v0.1.0//state"
}
```

## Outputs

- `id`
    -  __description__: id of the bucket
    -  __type__: `string`
