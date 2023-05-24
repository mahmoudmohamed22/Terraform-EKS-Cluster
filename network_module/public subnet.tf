resource "aws_subnet" "public_sub1" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.PUBLIC_SUBNET_1_CIDR
  availability_zone = var.AZ_1
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.COMPANY_NAME}_pub-subent-1"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}

resource "aws_subnet" "public_sub2" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.PUBLIC_SUBNET_2_CIDR
  availability_zone = var.AZ_2
  map_public_ip_on_launch = true
 
  tags = {
    Name = "${var.COMPANY_NAME}_pub-subent-2"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}


resource "aws_subnet" "public_sub3" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.PUBLIC_SUBNET_3_CIDR
  availability_zone = var.AZ_3
  map_public_ip_on_launch = true
 
  tags = {
    Name = "${var.COMPANY_NAME}_pub-subent-3"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}