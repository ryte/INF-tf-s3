variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "name" {
  type        = string
  description = "bucket name"
}

variable "versioning_enabled" {
  description = "if bucket versioning is enabled"
  default     = true
}

variable "environment" {
  type        = string
  description = "the environment this bucket is used for (e.g. 'testing')"
}
