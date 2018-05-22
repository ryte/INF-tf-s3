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
  type = "string"
  description = "principal_arn which get access"
}