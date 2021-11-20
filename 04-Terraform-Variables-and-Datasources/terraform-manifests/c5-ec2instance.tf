# EC2 Instance

# Resource: EC2 Instance
resource "aws_instance" "myec2instance" {
  ami = data.aws_ami.amz-linux2.id
  instance_type =  var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids =  [ aws_security_group.SSH.id, aws_security_group.web.id]
  
  tags = {
    "Name" = "Ec2 Demo 2"
  }

}

