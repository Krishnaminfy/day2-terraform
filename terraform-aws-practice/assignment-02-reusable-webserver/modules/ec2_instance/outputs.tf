output "id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web-krishna.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web-krishna.public_ip
}
