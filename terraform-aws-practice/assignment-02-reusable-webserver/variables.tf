variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "web_server_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0b09627181c8d5778"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
