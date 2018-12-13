output "arn" {
  value = "${aws_s3_bucket.this.arn}"
}

output "id" {
  value = "${aws_s3_bucket.this.id}"
}

output "bucket" {
  value = "${aws_s3_bucket.this.bucket}"
}

output "bucket_regional_domain_name" {
  value = "${aws_s3_bucket.this.bucket_regional_domain_name}"
}
