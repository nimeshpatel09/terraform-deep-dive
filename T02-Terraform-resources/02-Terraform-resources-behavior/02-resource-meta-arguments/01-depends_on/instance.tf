resource "aws_instance" "web" {
ami                         = "ami-........."
instance_type               = "t2.micro"
key_name                    = "sudhams_virginia_demo"
subnet_id                   = aws_subnet.public_subnet.id
vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]
user_data                   = file("nginx-install.sh")
availability_zone           = "us-east-1a"
associate_public_ip_address = true

 tags = {
    "Name" = "WebApp-terraform"
    }
}
