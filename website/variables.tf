variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "name" {
  type        = string
  description = "bucket name"
}

variable "policy" {
  type        = string
  description = "bucket policy if needed"
  default     = ""
}

variable "versioning_enabled" {
  type        = string
  description = "if the bucket should be versioned"
  default     = false
}

variable "versioning_mfa_delete" {
  type        = string
  description = "Enable MFA delete for either Change the versioning state of your bucket or Permanently delete an object version"
  default     = false
}

variable "website_index_document" {
  description = "Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders"
  default     = "index.html"
}

variable "website_error_document" {
  description = "An absolute path to the document to return in case of a 4XX error"
  default     = "404.html"
}

variable "website_routing_rules" {
  description = "A json array containing routing rules describing redirect behavior and when redirects are applied"
  default     = ""
}

variable "environment" {
  type        = string
  description = "the environment this bucket is used for (e.g. 'testing')"
}
