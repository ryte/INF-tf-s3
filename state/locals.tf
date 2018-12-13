locals {
  name = "${var.tags["Environment"]}-s3-state-${var.bucket_name}"
}

locals {
  tags = "${merge(
    var.tags,
    map(
      "Module", "s3/state",
      "Name", "${local.name}"
    )
  )}"
}
