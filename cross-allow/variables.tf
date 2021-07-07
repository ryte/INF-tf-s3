variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "name" {
  type        = string
  description = "bucket name identifier"
}

variable "principal_arns" {
  type        = list(string)
  description = "principal_arns which get access (all permissions) to this bucket"
}

variable "versioning_enabled" {
  description = "if the bucket should be versioned"
  default     = true
}

variable "environment" {
  type        = string
  description = "the environment this bucket is used for (e.g. 'testing')"
}
