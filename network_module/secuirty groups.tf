resource "aws_security_group" "public_SG" {
  name        = "public_SG"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.vpc_main.id

  ingress {
    description      = "allow ssh from 0.0.0.0/0"
    from_port        = var.SSH_PORT
    to_port          = var.SSH_PORT
    protocol         = "TCP"
    cidr_blocks      = [var.ALL_ROUTE_IP4]
    ipv6_cidr_blocks = [var.ALL_ROUTE_IP6]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.ALL_ROUTE_IP4]
    ipv6_cidr_blocks = [var.ALL_ROUTE_IP6]
  }

  tags = {
    Name = "public_SG"
  }
}
resource "aws_security_group" "private_SG" {
  name        = "private_SG"
  description = "Allow ssh and port 3000"
  vpc_id      = aws_vpc.vpc_main.id

   
  ingress {
    from_port   = var.SSH_PORT
    to_port     = var.SSH_PORT
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.vpc_main.cidr_block]
  }
  
  ingress {
    from_port   = var.PORT
    to_port     = var.PORT
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.vpc_main.cidr_block]
  }
  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.ALL_ROUTE_IP4]
    ipv6_cidr_blocks = [var.ALL_ROUTE_IP6]
  }

  tags = {
    Name = "private_SG"
  }
}