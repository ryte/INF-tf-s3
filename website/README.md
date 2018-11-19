# INF-tf-s3 website

Terraform module for creating a aws s3 bucket with enabled static website

NOTE: bucket names have to be unique __globally__

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/onpage-org/teams/inf).

## Module Input Variables

- `name`
    -  __description__: bucket name
    -  __type__: `string`

- `policy`
    -  __description__: bucket policy if needed
    -  __type__: `string`
    - __default__: ""

- `tags`
    -  __description__: common tags to add to the ressources
    -  __type__: `map`
    - __default__: {}

- `versioning_enabled`
    -  __description__: if the bucket should be versioned
    -  __type__: `string`
    - __default__: false

- `versioning_mfa_delete`
    -  __description__: Enable MFA delete for either Change the versioning state of your bucket or Permanently delete an object version
    -  __type__: `string`
    - __default__: false

- `website_error_document`
    -  __description__: An absolute path to the document to return in case of a 4XX error
    -  __type__: `string`
    - __default__: "index.html"

- `website_index_document`
    -  __description__: Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders
    -  __type__: `string`
    - __default__: "404.html"

- `website_routing_rules`
    -  __description__: A json array containing routing rules describing redirect behavior and when redirects are applied
    -  __type__: `string`
    - __default__: ""


## Usage

```hcl
module "website" {
  source = "git@github.com:onpage-org/INF-tf-s3.git?ref=v0.1.1//website"
  name   = "fancy_name"
  policy = "${data.aws_iam_policy_document.s3_policy.json}"
  tags   = "${local.common_tags}"

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


## Outputs

- `arn`
    -  __description__: bucket arn
    -  __type__: `string`


- `bucket`
    -  __description__: bucket
    -  __type__: `string`

- `bucket_regional_domain_name`
    -  __description__: bucketname with region in domain
    -  __type__: `string`


## Changelog
- 0.1.1 - added s3 static website
- 0.1.0 - Initial release.
