# creating s3 bucket using terraform

This task is very straight forward, the code is easy and already given so, I pasted screenshots from terraform init.

# 1. Terraform init
<img width="960" alt="1" src="https://github.com/user-attachments/assets/697821d7-be62-473c-a592-58b08bac2d85" />

# 2. Terraform plan
<img width="959" alt="2" src="https://github.com/user-attachments/assets/f40b241c-49b8-4c14-8c7a-4a39a8fc15ff" />

# 3. Terraform apply
<img width="960" alt="3" src="https://github.com/user-attachments/assets/3a4b8ac8-680e-4d8d-8094-dcf3db57e7b4" />

# 4. resource added
<img width="959" alt="4" src="https://github.com/user-attachments/assets/f5629b2d-d83f-4bf8-a734-ea3a802ac99e" />

# 5. We can see that bucket in created on console through terraform
<img width="960" alt="5" src="https://github.com/user-attachments/assets/cff13d56-27da-48e4-84c8-f1964a560643" />

# 6. Terraform destroy
<img width="960" alt="6" src="https://github.com/user-attachments/assets/10805cda-0188-4419-bfe4-3b423f88e2cf" />

# 7. resource destroyed
<img width="960" alt="7" src="https://github.com/user-attachments/assets/c74c0710-4ab4-4911-a9f1-c88831a0c4a3" />

# my learnings

Terraform is powerfull (IaC)tool, we use to automate the creation, update and deletion. with Terraform, we can do things with the help of a code, it can save a lot of time, because we can reuse the components, like we will do in further assignments(ec2 instance). 

Witht the help of terraform, we can delete the instance or any resource we are using on aws, with a command, "terraform destroy"

we need to take care of many things, like aws region, bucket name should be globally unique, and dont expose any of our credentials in code like profile. instead we can set aws_profile in $Env to use it.

# dont forget to destroy after use.
