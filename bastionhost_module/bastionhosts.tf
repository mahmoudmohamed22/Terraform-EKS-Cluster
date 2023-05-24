resource "aws_instance" "bastionhost1" {
  ami                     = "ami-06e46074ae430fba6"
  instance_type           = "t2.micro"
  subnet_id               = var.bastionhost_subnet_id
  vpc_security_group_ids  = [var.security_group_id]
  iam_instance_profile    = var.test_instance_profile_name
  key_name                = "tf-key-pair"
  user_data = <<-EOF
              #!/bin/bash
              echo $(aws secretsmanager get-secret-value --secret-id my-private-key --query SecretString --output text) > /home/ec2-user/tf-key-pair.pem 
              chown ec2-user:ec2-user tf-key-pair.pem
              chmod 400 /home/ec2-user/tf-key-pair.pem
              curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
              chmod +x ./kubectl
              sudo mv ./kubectl /usr/local/bin/kubectl
              sudo mkdir /home/ec2-user/.aws/
              sudo touch /home/ec2-user/.aws/credentials
              echo "[default]" > /home/ec2-user/.aws/credentials
              echo "aws_access_key_id = ${jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["aws_access_key_id"]}" >> /home/ec2-user/.aws/credentials
              echo "aws_secret_access_key = ${jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["aws_secret_access_key"]}" >> /home/ec2-user/.aws/credentials
              aws eks update-kubeconfig --region us-east-1 --name ${var.eks_cluster_name}
              EOF
  tags = {
    Name = "bastion-host"
  }
  
}


