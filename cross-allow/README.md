# INF-tf-s3 cross-allow

Terraform module for creating a aws s3 cross-allow bucket

NOTE: bucket names have to be unique __globally__

NOTE: full bucket name will be ${environment}-s3-cross-allow-${var.name}

NOTE: the bucket will be versioned

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/onpage-org/teams/inf).

## Module Input Variables

- `name`
    -  __description__: bucket name identifier
    -  __type__: `string`

- `tags`
    -  __description__: a map of tags which is added to all supporting ressources
    -  __type__: `map`
    -  __default__: {}

- `principal_arn`
    -  __description__: principal_arn which gets access (all permissions) to this bucket
    -  __type__: `string`

## Usage

```hcl
module "fancy_cat" {
  name          = "fancy-cat"
  tags          = "${local.common_tags}"
  principal_arn = "arn:aws:iam::123456789012:role/rolename"
  source        = "git@github.com:onpage-org/INF-tf-s3.git?ref=v0.1.0//cross-allow"
}
```

## Outputs

- `arn`
    -  __description__: bucket arn
    -  __type__: `string`


- `bucket`
    -  __description__: bucket
    -  __type__: `string`