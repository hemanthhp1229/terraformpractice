# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instnace Type"
  type = string
  default = "t3.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "HemanthYahooaccount_KP.pem"
}

# AWS EC2 Instance Type - List
variable "ec2_instancetype_list" {
  description = "Ec2 instance types in list format"
  type = list(string)
  default = [ "t2.micro","t3.micro" ]
}

# AWS EC2 Instance Type - Map
variable "ec2_instancetype_map" {
  description = "Ec2 instance types in map format"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qc" = "t3.micro"
  }
}