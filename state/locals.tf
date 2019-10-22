locals {
  name = "${var.tags["Environment"]}-s3-state-${var.name}"
}

locals {
  tags = merge(
    var.tags,
    {
      "Module" = "s3/state"
      "Name"   = local.name
    },
  )
}

