# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region of aws resources"
  type = string
  default = "us-east-1"
  
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "type of ec2 instance"
  type = string
  default = "t2.micro"
  
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "key pair file used to login in into instance"
  type = string
  default = "HemanthYahooaccount_KP"
  
}

