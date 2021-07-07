output "arn" {
  value       = aws_s3_bucket.s3.arn
  description = "bucket arn"
}

output "id" {
  value       = aws_s3_bucket.s3.id
  description = "bucket id"
}

output "bucket" {
  value       = aws_s3_bucket.s3.bucket
  description = "bucket"
}

output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.s3.bucket_regional_domain_name
  description = "bucket name with region in domain"
}
