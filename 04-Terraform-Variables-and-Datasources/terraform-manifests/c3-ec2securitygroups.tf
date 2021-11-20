# Create Security Group - SSH Traffic

resource "aws_security_group" "SSH" {
  name        = "SG-allow SSH"
  description = "Allow SSH inbound traffic"
 

  ingress {
    description      = "Allow ssh from internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  tags = {
    Name = "allow_ssh"
  }
}

# Create Security Group - Web Traffic


resource "aws_security_group" "web" {
  name        = "SG-allow http traffic"
  description = "Allow SSH inbound traffic"
 

  ingress {
    description      = "Allow ssh from internet"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }
    ingress {
    description      = "Allow ssh from internet ipv6"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_web traffic"
  }
}
