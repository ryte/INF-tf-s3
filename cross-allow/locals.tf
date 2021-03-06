locals {
  name = "${var.environment}-s3-cross-allow-${var.name}"
}

locals {
  tags = merge(
    var.tags,
    {
      "Module" = "s3/cross-allow"
      "Name"   = local.name
    },
  )
}
