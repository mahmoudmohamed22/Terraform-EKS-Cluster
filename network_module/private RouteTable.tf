resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block = var.ALL_ROUTE_IP4 #Destination from vpc main
    nat_gateway_id = aws_nat_gateway.NAT_GW.id # target nat gateway
  }

 

  tags = {
    Name = "${var.COMPANY_NAME}_private-rtb"
  }
}