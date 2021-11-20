# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
    description = "Ec2 instance public ip"
    value = aws_instance.myec2instance.public_dns
  
}


# output "public_ip" {
#   description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
#   value       = element(concat(aws_instance.this.*.public_ip, aws_spot_instance_request.this.*.public_ip, [""]), 0)
# }
