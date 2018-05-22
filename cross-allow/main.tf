resource "aws_s3_bucket" "s3" {
  bucket = "${var.name}"
  tags   = "${local.tags}"
  acl    = "private"
  versioning {
    enabled = true
  }
  policy  = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "${var.principal_arn}"
            },
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::${var.name}",
                "arn:aws:s3:::${var.name}/*"
            ]
        }
    ]
}
EOF

}