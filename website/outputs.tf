output "arn" {
  value       = aws_s3_bucket.this.arn
  description = "bucket arn"
}

output "id" {
  value       = aws_s3_bucket.this.id
  description = "bucket id"
}

output "bucket" {
  value       = aws_s3_bucket.this.bucket
  description = "bucket"
}

output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.this.bucket_regional_domain_name
  description = "bucket name with region in domain"
}
