provider "aws" {
  region = "ap-south-1"
}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "minfy-training-krishna-s3-8181" 
  #acl = "private"
 
  tags = {
    Name = "MyBucket"
    Environment = "Dev"
  }
}