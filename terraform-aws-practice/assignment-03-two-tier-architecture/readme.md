# Build a Two-Tier Architecture

In Assignment 3, I built a two-tier architecture using Terraform to practice network segmentation and secure cloud design. I created a VPC with:

A public subnet for the web server, accessible from the internet.

A private subnet for the database, isolated from the internet.

I used a NAT Gateway so the database in the private subnet could reach the internet for updates, but still remain unreachable from outside.

For security:

The web server security group allows HTTP and SSH from anywhere.

The database security group allows only internal access from the web server, on the database port (3306).

I deployed an EC2 instance as a web server and an RDS instance as the database. I tested the architecture by SSHing into the web server and connecting to the database using the RDS endpoint. This confirmed that the web server can talk to the database, but the database is not publicly accessible.

This assignment helped me understand network isolation, NAT gateways, and secure multi-tier infrastructure design using Terraform.

# Terraform init and plan
<img width="960" alt="lf" src="https://github.com/user-attachments/assets/dda15e60-d2b4-4806-ac0e-40ef4044ede3" />

# Terraform apply
<img width="960" alt="lf2" src="https://github.com/user-attachments/assets/8dd06baf-38e1-4b73-9b75-9c2be4fc02c5" />

# Error 
<img width="960" alt="error" src="https://github.com/user-attachments/assets/c0402fbe-6ced-4659-bba9-c9e0ed67be81" />

error (AccessDenied: User ... is not authorized to perform: rds:CreateDBSubnetGroup ... with an explicit deny in a service control policy
)


# Reason for error
This means that my IAM user, even though it has AdminAccess through AWS SSO, is being blocked by an organization-level Service Control Policy (SCP).

SCPs are used in AWS Organizations to apply restrictions above the IAM level, and in this case, the SCP explicitly denies the ability to create RDS Subnet Groups. Since a subnet group is required for provisioning an RDS instance in a VPC, this denial prevents me from completing the deployment.

So, even though I have the necessary permissions within my AWS account, the organization’s security policies are overriding and blocking this action.

To proceed, I would need the organization's administrator to update the SCP to allow rds:CreateDBSubnetGroup, or test in a different AWS environment without such restrictions.

This issue taught me how Service Control Policies can affect Terraform deployments and why it's important to understand organizational-level access controls, not just IAM roles.

