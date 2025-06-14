#  Using a Remote Backend for State

# 1. Code to create the bucket
I ran this code before making the backend.tf to run the remote backend in thsi bucket. Because it was showing error while running with backend, that bucket doesnt exist.
<img width="960" alt="code" src="https://github.com/user-attachments/assets/3347e558-636b-4c30-ac6c-51afcb391103" />

# 2. Backend.tf file (remote backend) 
I used the same bucket name to run this remote backend inside it.
<img width="960" alt="remote" src="https://github.com/user-attachments/assets/b5e1e6a9-c335-4567-8673-d1bec94454cb" />

# 3. Bucket on console (same as prev task).
<img width="960" alt="9" src="https://github.com/user-attachments/assets/775cf422-651a-4752-b169-9bb15ba00538" />

# 4. terraform.tfstates file inside my s3 bucket.
<img width="960" alt="10" src="https://github.com/user-attachments/assets/6bf8df95-85a1-489a-9d3c-230516106e08" />

# 5. Terraform destroy
while destroying the bucket, I was getting the error that the bucket is not empty, so we need to empty it first. but I was not able to do it from terraform. that's why I am getting 0 resource destroyed.
<img width="960" alt="11" src="https://github.com/user-attachments/assets/8cd5b826-cf11-4c88-a39f-cdf10c3118fe" />

# 6. Empty bucket
I emptied my bucket from the console.
<img width="959" alt="12" src="https://github.com/user-attachments/assets/88e9415a-0e8f-4d00-ad1e-7fb6909e2dd4" />

# 7. Deleting bucket
after emptying the bucket, I deleted the bucket through console itslef.
<img width="960" alt="13" src="https://github.com/user-attachments/assets/fd0b0133-d050-4d74-8cb6-f537cb61580f" />
<img width="960" alt="14" src="https://github.com/user-attachments/assets/df31e5ea-f01b-4fcc-ba78-6676b145c34e" />

# 8. Successfuly deleted the bucket.
<img width="960" alt="15" src="https://github.com/user-attachments/assets/f432fb9d-ecf0-4f3f-8c74-3337dc171a05" />
