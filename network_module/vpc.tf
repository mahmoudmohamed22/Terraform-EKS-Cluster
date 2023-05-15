resource "aws_vpc" "vpc_main" {
  cidr_block = var.VPC_CIDR
  enable_dns_hostnames=true
  tags = {
    Name = "${var.COMPANY_NAME}_VPC"
  }
}



