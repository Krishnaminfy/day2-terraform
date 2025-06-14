provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "minfy-training-krishna-s3-8181"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}