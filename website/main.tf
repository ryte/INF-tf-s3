resource "aws_s3_bucket" "this" {
  bucket    = "${var.name}"
  tags      = "${local.tags}"
  acl       = "public-read"
  policy    = "${var.policy}"
  versioning {
    enabled    = "${var.versioning_enabled}"
    mfa_delete = "${var.versioning_mfa_delete}"
  }
  website {
    index_document = "${var.website_index_document}"
    error_document = "${var.website_error_document}"
    routing_rules  = "${var.website_routing_rules}"
  }

  /*cors_rule {
    allowed_headers = "${var.cors_allowed_headers}"
    allowed_methods = "${var.cors_allowed_methods}"
    allowed_origins = ["${var.cors_allowed_origins}"]
    expose_headers  = "${var.cors_expose_headers}"
    max_age_seconds = "${var.cors_max_age_seconds}"
  }*/
}
