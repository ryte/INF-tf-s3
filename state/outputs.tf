output "arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "bucket arn"
}

output "id" {
  value       = aws_s3_bucket.bucket.id
  description = "bucket id"
}

output "bucket" {
  value       = aws_s3_bucket.bucket.bucket
  description = "bucket"
}

output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.bucket.bucket_regional_domain_name
  description = "bucket name with region in domain"
}
