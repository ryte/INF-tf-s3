resource "aws_s3_bucket" "bucket" {
  acl    = "private"
  bucket = var.name
  tags   = merge(local.tags, {type = "data"})

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
