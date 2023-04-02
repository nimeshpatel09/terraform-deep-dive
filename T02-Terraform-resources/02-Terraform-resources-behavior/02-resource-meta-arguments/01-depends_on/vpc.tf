resource "aws_vpc" "terraform_vpc" {
    cidr_block          = "192.168.0.0/16"
    enable_dns_hostname = "true"
    tags = {
      Name = "terraform-vpc" 
    } 
} 