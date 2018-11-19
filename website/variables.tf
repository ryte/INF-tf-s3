variable "name" {
  type = "string"
  description = "bucket name"
}
variable "policy" {
   type = "string"
   description = "bucket policy if needed"
   default = ""
}

variable "tags" {
  type = "map"
  description = "common tags to add to the ressources"
  default = {}
}

variable "versioning_enabled" {
   type = "string"
   description = "if the bucket should be versioning"
   default = false
}

variable "versioning_mfa_delete" {
   type = "string"
   description = "Enable MFA delete for either Change the versioning state of your bucket or Permanently delete an object version"
   default = false
}

variable "website_index_document" {
  default     = "index.html"
  description = "Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders"
}

variable "website_error_document" {
  default     = "404.html"
  description = "An absolute path to the document to return in case of a 4XX error"
}

variable "website_routing_rules" {
  default     = ""
  description = "A json array containing routing rules describing redirect behavior and when redirects are applied"
}

module "storybook_static" {
  source = "../../../../INF-tf-s3/website"
  name = "ryte-storybook-${var.environment}"
  policy = "${data.aws_iam_policy_document.s3_policy.json}"

  tags = "${local.common_tags}"
  website_index_document = "index.html"
  website_error_document = "error.html"
}