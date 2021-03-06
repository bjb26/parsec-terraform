#server.tf
##################################################################################
# VARIABLES
##################################################################################


##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  region                  = "eu-west-1"
  profile                 = "boltonb"
}

##################################################################################
# RESOURCES
##################################################################################

resource "aws_spot_instance_request" "parsec" {
  ami           = "ami-ee58b397"
  spot_price    = "0.25"
  instance_type = "g2.2xlarge"
  security_groups = ["parsec-security-group"]
  user_data = "${file("~/Code/terraform/userdata.txt")}"

ebs_block_device {
    device_name = "/dev/sda1"
    volume_type = "gp2"
    volume_size = 40
    delete_on_termination = "true"
  }
}



##################################################################################
# OUTPUT
##################################################################################
