

# Create S3 bucket for remote backend
resource "aws_s3_bucket" "terraform_state_krishna" {
  bucket = "minfy-training-krishna-s3-8181"  
}
