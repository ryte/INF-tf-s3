output "arn" {
  value = aws_s3_bucket.bucket.arn
}

output "id" {
  value = aws_s3_bucket.bucket.id
}

output "bucket" {
  value = aws_s3_bucket.bucket.bucket
}

output "bucket_regional_domain_name" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}
