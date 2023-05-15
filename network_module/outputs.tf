output vpc_id  {
    value = aws_vpc.vpc_main.id
}

output pub_sub_1  {
    value = aws_subnet.public_sub1.id
}

output pub_sub_2  {
    value = aws_subnet.public_sub2.id
}

output priv_sub_1  {
    value = aws_subnet.private_sub1.id
}

output priv_sub_2  {
    value = aws_subnet.private_sub2.id
}

output private_SG  {
    value=aws_security_group.private_SG.id
}

output public_SG  {
    value=aws_security_group.public_SG.id
}

