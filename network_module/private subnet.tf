resource "aws_subnet" "private_sub1" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.PRIVATE_SUBNET_1_CIDR
  availability_zone =var.AZ_1
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.COMPANY_NAME}_private-subent-1"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "private_sub2" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.PRIVATE_SUBNET_2_CIDR
  availability_zone =var.AZ_2
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.COMPANY_NAME}_private-subent-2"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}