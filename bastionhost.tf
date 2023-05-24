module my_bastionhost {
 source = "./bastionhost_module"
 #inputs modules=global variables
 
 test_instance_profile_name=module.my_secrets_manager.instance_profile_name
 bastionhost_subnet_id=module.my_network.pub_sub_2
 security_group_id=module.my_network.public_SG.id
 eks_cluster_name=module.my_eks.aws_eks_cluster_name
}