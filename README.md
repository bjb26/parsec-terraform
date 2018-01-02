# Parsec Terraform

This repository contains the terraform code to depoly a Parsec Gaming instance to AWS. 

# Requirements
  - Clone this repo 
  - Before you begin, make sure the Parsec Client is installed on your computer.
  - Ensure you have aws and terraform installed.
  - 
  
  
# Configuring AWS 

  - Create an AWS IAM  user and create Access keys. [AWS IAM User Guide]
  - Once created, ensure you have your credentials defined in ~/.aws/credentials

```
[AWS-User]
aws_access_key_id = insert_key_here
aws_secret_access_key = insert_key_here
```


[AWS IAM User Guide]: <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html>
