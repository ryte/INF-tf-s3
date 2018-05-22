variable "tags" {
  type = "map"
  description = "common tags to add to the ressources"
  default = {}
}

variable "bucket_name" {}
variable "versioning" {}
variable "region" {}
