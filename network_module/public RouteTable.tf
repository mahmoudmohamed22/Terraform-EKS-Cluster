resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block = var.ALL_ROUTE_IP4 #Destination
    gateway_id = aws_internet_gateway.igw.id # target
  }

  route {
    ipv6_cidr_block        = var.ALL_ROUTE_IP6 #Destination
    gateway_id = aws_internet_gateway.igw.id # target
  }

  tags = {
    Name = "${var.COMPANY_NAME}_pub-rtb"
  }
}