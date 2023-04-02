resource "aws_route" "private-route_table" {
    vpc_id  = aws_vpc.id
    tags = {
    Name = "private-route"
  }
}

resource "aws_route" "public-route_table" {
    route_table_id          = aws_route_table.public_route_table.id
    destination_cidr_block  = "0.0.0.0/0"
    gateway_id              = aws_internet_gateway.igw.id
    depends_on              = [aws_internet_gateway.igw]
    vpc_id                  = aws_vpc.id
}

resource "aws_route_table_assoviation" "public-rt_assoc" {
    subnet_id       = aws_subnet.public_subnet.id
    route_table_id  = aws_route_table.public_route_table.id 
}

resource "aws_route_table_assoviation" "private-rt_assoc" {
    subnet_id       = aws_subnet.private_subnet.id
    route_table_id  = aws_route_table.public_route_table.id 
}