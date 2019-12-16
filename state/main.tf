data "aws_region" "current" {
}

resource "aws_s3_bucket" "bucket" {
  acl    = "private"
  bucket = var.name
  tags   = local.tags
  region = data.aws_region.current.name

  versioning {
    enabled = var.versioning_enabled
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

