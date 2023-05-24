resource "tls_private_key" "creatorkey" {
algorithm = var.ALGORITHM_ENC
rsa_bits  = var.RSA_BITS
}

resource "aws_key_pair" "key_pair" {
key_name = var.KEY_NAME
public_key = tls_private_key.creatorkey.public_key_openssh
}

resource "local_file" "tf-key" {
content  = tls_private_key.creatorkey.private_key_pem
filename = "${var.KEY_NAME}.pem"
}