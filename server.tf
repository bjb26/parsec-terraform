##################################################################################
# VARIABLES
##################################################################################

##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "/Users/boltonb/.aws/credentials"
  profile                 = "boltonb"
}

##################################################################################
# RESOURCES
##################################################################################

#resource "aws_security_group" "launch-wizard-1" {
 # name = "launch-wizard-1"
  #description = ""
  #vpc_id = "vpc-28315c4f"
#}

#resource "aws_instance" "example" {
resource "aws_spot_instance_request" "parsec" {
  ami           = "ami-ab0ff9d2"
  spot_price    = "0.30"
  instance_type = "g2.2xlarge"
  security_groups = ["launch-wizard-1"]
  user_data = "${file("/Users/boltonb/Code/terraform/userdata.txt")}"
}

##################################################################################
# OUTPUT
##################################################################################
