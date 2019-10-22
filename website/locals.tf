locals {
  name = "${var.tags["Environment"]}-s3-website-${var.name}"
}

locals {
  tags = merge(
    var.tags,
    {
      "Module" = "s3/website"
      "Name"   = local.name
    },
  )
}

