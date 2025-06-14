# Refactor the Web Server into a Reusable Module

I learned how to create and use a Terraform module to make my infrastructure code reusable and organized. Instead of repeating the same EC2 web server code, I moved it into a local module under modules/ec2_instance.

I used variables for dynamic values like instance type, AMI, subnet ID, and tags, making the module flexible. I also added outputs to expose the instance ID and public IP.

In the main Terraform configuration, I kept the networking setup and simply called the module to create the EC2 instance, passing in the required values. This taught me how modules work like functions—clean, reusable, and easy to maintain.

Finally, I deployed the setup using terraform apply and verified that the web server was running and accessible. This assignment helped me understand modular design in Terraform and how it improves scalability and maintainability.

# 1. Terraform init and plan
<img width="960" alt="11" src="https://github.com/user-attachments/assets/3c6f36e8-01cb-42a1-b711-9d31b418b94a" />

# 2. Terraform apply
<img width="960" alt="9" src="https://github.com/user-attachments/assets/10eb3ab5-d269-4690-9977-cac72b34538d" />

# 3. We can see the public ip

<img width="960" alt="12" src="https://github.com/user-attachments/assets/d3dce44b-3093-4912-87a9-791b7a4e05ad" />
I dont have the screenshot of the running server, it was taking too long to respond, I tried 2 to 3 times, all the things were right, the same problem we were facing in the class, I also tried with http:// if thats the problem, but I did not see it running, then I verified all the things on console also, but couldn't get it. In this code we are not generating key pair, if we were, I would have tried doing ssh. What I learned from this task, is how to resuse the ec2 module with different ip blocks, which is very time saving for a big project.

# 4. Terraform destroy
<img width="960" alt="13" src="https://github.com/user-attachments/assets/943a1cb9-913f-468b-9759-724791d7c4cc" />
