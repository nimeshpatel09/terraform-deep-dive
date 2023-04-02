resource "aws_internet_gateway" "tf-igw" {
   vpc_id                   = aws_vpc.id

   tags = {
    Name = "tf-igw"
  }
}