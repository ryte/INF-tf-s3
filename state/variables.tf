variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {
    "Environment" = ""
  }
}

variable "name" {
  type        = string
  description = "bucket name"
}

variable "versioning_enabled" {
  default     = true
  description = "if bucket versioning is enabled"
}

