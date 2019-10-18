# INF-tf-s3 state

Terraform module for creating a aws s3 state bucket

NOTE: bucket names have to be unique __globally__

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

## Module Input Variables

- `name`
    - __description__: full bucket name
    - __type__: `string`

- `tags`
    - __description__: a map of tags which is added to all supporting ressources
    - __type__: `map`
    - __default__: {}

- `versioning_enabled`
    - __description__: if the bucket should be versioned
    - __default__: `string`

## Usage

```hcl
module "state" {
  source      = "git@github.com:ryte/INF-tf-s3.git?ref=v0.2.1//state"
  name        = "${var.remote_state_bucket}"
  tags        = "${local.common_tags}"
  versioning_enabled  = true
}
```

## Outputs

- `arn`
    - __description__: bucket arn
    - __type__: `string`

- `id`
    - __description__: bucket id
    - __type__: `string`

- `bucket`
    - __description__: bucket
    - __type__: `string`

- `bucket_regional_domain_name`
    - __description__: bucket name with region in domain
    - __type__: `string`
