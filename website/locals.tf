locals {
  name = "${var.tags["Environment"]}-s3-website-${var.name}"
}

locals {
  tags = "${merge(
    var.tags,
    map(
      "Module", "s3/cross-allow",
      "Name", "${local.name}"
    )
  )}"
}