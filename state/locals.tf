locals {
  tags = {
    CID         = "${var.cid}"
    Environment = "${var.environment}"
    Module      = "s3/state"
    Owner       = "${var.owner}"
    Project     = "${var.project}"
    Pet         = "${random_pet.bucket.id}"
  }
}
