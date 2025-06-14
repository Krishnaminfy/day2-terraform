# terraform-ec2 (A Proper Infrastructure Setup (VPC, EC2, Security Group)

In this task, we will launch as ec2 instance using terraform, so we need to write the code to create vpc, subnets, internet gateway, security groups, then finally launching ec2 instance.

# 1. Terraform init
<img width="960" alt="7" src="https://github.com/user-attachments/assets/411634dd-248d-495b-b50a-1ba6bfe615bf" />

# 2. Terraform plan
<img width="960" alt="8" src="https://github.com/user-attachments/assets/603cd1a3-1de7-4da2-8b39-513317f1d612" />

# 3. Terraform apply
<img width="960" alt="9" src="https://github.com/user-attachments/assets/3e331589-2747-419d-8bfd-7a4b51be896d" />

# 4. we can see the output, Public and Private ips of our ec2 instance
<img width="960" alt="10" src="https://github.com/user-attachments/assets/c9bcf6e2-9da7-4483-b3c6-22a5d4cad7a0" />

# 5. We can see our output on the public ip.
<img width="960" alt="Screenshot 2025-06-12 150049" src="https://github.com/user-attachments/assets/f9e0e93b-c95e-407e-ba48-c2adfac7803f" />

# 6. Terraform destroy
<img width="960" alt="11" src="https://github.com/user-attachments/assets/9777da15-8a99-4e50-966c-24e286596307" />
<img width="959" alt="14" src="https://github.com/user-attachments/assets/3934856f-3e31-459b-b829-f57e8adda2ef" />

# my learnings

1. always check cidr block twice.
2. use more variables to reuse the code.
3. check inbound and outbound rules for the requirements.
# 4. always destroy after use.
