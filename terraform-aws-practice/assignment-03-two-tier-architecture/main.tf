provider "aws" {
  region = "ap-south-1"
}


# EC2 Web Server
resource "aws_instance" "web" {
  ami                    = "ami-0b09627181c8d5778"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids     = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "WebServer"
  }
}

# RDS Database Instance
resource "aws_db_instance" "db" {
  allocated_storage      = 20
  db_name               = "mydb"
  engine                = "mysql"
  engine_version        = "8.0"
  instance_class        = "db.t3.micro"
  username              = "admin"
  password              = var.db_password
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name  = aws_db_subnet_group.main.id
  skip_final_snapshot   = true
  publicly_accessible   = false
  tags = {
    Name = "MySQLDB"
  }
}

# DB Subnet Group
resource "aws_db_subnet_group" "main" {
  name       = "main-db-subnet-group"
  subnet_ids = [aws_subnet.private.id]
  tags = {
    Name = "MainDBSubnetGroup"
  }
}
