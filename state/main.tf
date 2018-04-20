resource "aws_s3_bucket" "bucket" {
  acl    = "private"
  bucket = "${var.bucket_name}"
  tags   = "${merge(local.tags)}"
  region = "${var.region}"

  versioning {
    enabled = "${var.versioning}"
  }
}
