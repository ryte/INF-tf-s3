variable "tags" {
  type = "map"
  description = "common tags to add to the ressources"
  default = {}
}

variable "name" {
  type = "string"
  description = "bucket name"
}

variable "principal_arn" {
  description = "principal_arn which get access"
}

variable "versioning_enabled" {
  default = true
  description = "if the bucket should be versioned"
}
