# Parsec Terraform

This repository contains the terraform code to depoly a Parsec Gaming instance to AWS. 

To get started clone this repo!

# Requirements
  - Before you begin, make sure the Parsec Client is installed on your computer.
  - Ensure you have [AWS] and [Terraform] installed.
  
# Configuring AWS 

  - Create an AWS IAM  user and create Access keys. [AWS IAM Documentation]
  - Once created, ensure you have your credentials defined in ~/.aws/credentials

```
[name of aws user]
aws_access_key_id = insert_key_here
aws_secret_access_key = insert_key_here
```

  - Create a security group named parsec-security-group. [Security Group Documentation] with the below configuration. 
  - parsec-security-group should have these ports 8000-8011 TCP and UDP are open.

# Parsec configuration

  - Log into https://parsecgaming.com/
  - Add computer > Add your own gaming computer > If you are managing your own cloud server click here to see extra steps
  - You should now be able to see your parsec configuration settings. Save the configuration settings to a file /parsec-terraform/userdata.txt

```
network_server_start_port=8000
server_key=server_key_here
app_check_user_data=1
app_first_run=0
app_host=1
```

# server.tf

This file is the terraform file where all configuration paramaters are definied to build the server. 

The current configruation will create a spot instance request with a max pricing of $0.20 per hour in the eu-west-1 region. 


# Launching an instance 

  - When inside the parsec-terraform directory type the below command to build an EC2 instance. 

```sh
$ terraform apply
```

  - Type the below command to destroy the EC2 instance. 

```sh
$ terraform destroy
```

[AWS IAM User Documentation]: <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html>
[Terraform]: <https://www.terraform.io/intro/getting-started/install.html>
[AWS]: <https://docs.aws.amazon.com/cli/latest/userguide/installing.html>
[Security Group Documentation]: <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html#CreatingSecurityGroups>
