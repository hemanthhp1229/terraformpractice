# Resource: EC2 Instance
resource "aws_instance" "myec2instance" {
  ami = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "Ec2 Demo"
  }

}