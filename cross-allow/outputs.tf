output "arn" {
  value = "${aws_s3_bucket.s3.arn}"
}

output "bucket" {
  value = "${aws_s3_bucket.s3.bucket}"
}