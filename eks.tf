module "my_eks" {
 source = "./eks_module"

private_sub_1= module.my_network.priv_sub_1
private_sub_2 =module.my_network.priv_sub_2
public_sub_1= module.my_network.pub_sub_1
public_sub_2 =module.my_network.pub_sub_2


}