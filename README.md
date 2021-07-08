# INF-tf-s3

Terraform module for creating s3 buckets
currently available settings
- [cross-allow](cross-allow/README.md)
- [state](state/README.md)
- [website](website/README.md)


This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

## Authors

- [Armin Grodon](https://github.com/x4121)
- [Markus Schmid](https://github.com/h0raz)

## Changelog

- 0.4.3 - Remove `region` from `aws_s3_bucket`
- 0.4.2 - Add variable `environment` instead of reading from tags
- 0.4.1 - Fix typo in cross-allow module
- 0.4.0 - Upgrade to terraform 0.12.x
- 0.3.0 - make principal_arns in cross-allow a list instead of a string
- 0.2.1 - bugfix of bucket name
- 0.2.0 - added encryption, streamlined variable names
- 0.1.1 - added s3 static website
- 0.1.0 - Initial release.

## License

This software is released under the MIT License (see `LICENSE`).
