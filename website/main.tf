data "aws_region" "current" {}

resource "aws_s3_bucket" "this" {
  acl       = "public-read"
  bucket    = "${var.name}"
  tags      = "${local.tags}"
  region    = "${data.aws_region.current}"

  versioning {
    enabled    = "${var.versioning_enabled}"
    mfa_delete = "${var.versioning_mfa_delete}"
  }

  policy    = "${var.policy}"

  website {
    index_document = "${var.website_index_document}"
    error_document = "${var.website_error_document}"
    routing_rules  = "${var.website_routing_rules}"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
