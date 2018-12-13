data "aws_region" "current" {}

resource "aws_s3_bucket" "this" {
  acl    = "private"
  bucket = "${var.name}"
  tags   = "${local.tags}"
  region = "${data.aws_region.current}"

  versioning {
    enabled = "${var.versioning_enabled}"
  }

  policy  = "${data.aws_iam_policy_document.bucket_policy.json}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    actions = ["s3:*"]
    resources = [
      "arn:aws:s3:::${var.name}",
      "arn:aws:s3:::${var.name}/*"
    ]

    principals {
      type = "AWS"
      identifiers = ["${var.principal_arn}"]
    }
  }
}
