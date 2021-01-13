data "aws_region" "current" {
}

resource "aws_s3_bucket" "s3" {
  acl    = "private"
  bucket = local.name
  tags   = merge(local.tags, {type = "data"})
  region = data.aws_region.current.name

  versioning {
    enabled = var.versioning_enabled
  }

  policy = data.aws_iam_policy_document.bucket_policy.json

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
      "arn:aws:s3:::${local.name}",
      "arn:aws:s3:::${local.name}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = var.principal_arns
    }
  }
}
