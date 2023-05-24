# AWS EKS Cluster with Terraform
This repository contains Terraform code for creating an EKS cluster on AWS. The code provisions the necessary infrastructure, including VPC, subnets, security groups, and EKS cluster.
## Prerequisites
Before you begin, you'll need the following:
- An AWS account with appropriate permissions to create EKS clusters

- Terraform installed on your local machine

- AWS CLI installed on your local machine
## Getting Started
To get started, follow these steps:
Clone this repository to your local machine.
Navigate to the terraform directory.
- Run `terraform init` to initialize the Terraform modules.
- Run `terraform plan` to see the resources that will be created.
- Run `terraform apply` to create the EKS cluster.

## Configuration
The Terraform code uses variables to configure the EKS cluster. You can modify the variables in the `variables.tf` file to customize the cluster configuration.

#### Customizing the Cluster
The Terraform code provides several options for customizing the EKS cluster, including:
- Configuring the number of worker nodes
- Specifying the instance type for worker nodes
- Configuring the Kubernetes version
- Configuring the VPC and subnet CIDRs
- You can modify these options in the `variables.tf` file to customize the cluster to your needs.
- 
### Accessing the Cluster
Once the cluster is created, you can access it using the kubectl command-line tool. 
To do so, you'll need to configure kubectl to use the cluster's credentials. You can do this by running the following command:

```
aws eks update-kubeconfig --name <cluster-name>
```
Replace `<cluster-name>` with the name of your EKS cluster.

Cleanup

To delete the EKS cluster and associated resources, run `terraform destroy`.
## Conclusion
This repository provides a simple way to create an EKS cluster with Terraform. Feel free to modify the code to suit your needs, and don't hesitate to reach out if you have any questions or issues. Happy coding!
