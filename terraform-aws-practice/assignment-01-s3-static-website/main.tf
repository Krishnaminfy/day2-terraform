provider "aws" {
  region = var.aws_region
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_public_access_block" "public_access" {
    bucket = aws_s3_bucket.my_bucket.id
    block_public_acls = false
    block_public_policy = false
    ignore_public_acls = false
    restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "website_config"{
    bucket = aws_s3_bucket.my_bucket.id
    index_document {
        suffix = "index.html"
    }
}

data "aws_iam_policy_document" "public_read_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.my_bucket.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }
}

resource "aws_s3_bucket_policy" "allow_access_from_anywhere" {
  bucket = aws_s3_bucket.my_bucket.id
  policy = data.aws_iam_policy_document.public_read_policy.json

}

resource "aws_s3_object" "index_html" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "index.html"
  source = "D:/assignment-01-s3-static-website/index.html"
  content_type  = "text/html"
}