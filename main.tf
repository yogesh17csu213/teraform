provider "aws" {
  #access_key = "${var.AWS_ACCESS_KEY}"                            #define manually aws cred in terrafrom.tfvars
  #secret_key = "${var.AWS_SECRET_KEY}"

  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
  region                  = var.region
}

# To Create VPC

module "vpc" {
  source = "./modules/networking/modules/vpc"
  cidr_block     = var.cidr_block
  cluster_name   = var.cluster_name
}

# To Create subnets

module "subnets" {
  source = "./modules/networking/modules/subnets"
  cluster_name   = var.cluster_name
  vpc_id         = module.vpc.vpc_id
  region         = var.region
   
}

#To Create NAT

module "nat" {
  source = "./modules/networking/modules/nat"
  subnet_id    = module.subnets.subnet_id
  igw_id       = module.vpc.igw_id
  cluster_name = var.cluster_name
}

# To Create Route tables

module "route" {
  source = "./modules/networking/modules/routes"
  cluster_name           = var.cluster_name
  vpc_id                 = module.vpc.vpc_id
  gateway_id             = module.vpc.gateway_id
  nat_gateway_id         = module.nat.nat_gateway_id
  subnet_id_private_1a   = module.subnets.subnet_id_private_1a
  subnet_id_private_1b   = module.subnets.subnet_id_private_1b
  subnet_id_private_1c   = module.subnets.subnet_id_private_1c
  subnet_id_public_1a    = module.subnets.subnet_id_public_1a
  subnet_id_public_1b    = module.subnets.subnet_id_public_1b
  subnet_id_public_1c    = module.subnets.subnet_id_public_1c
}

# TO create security groups

module "security-groups" {
  source = "./modules/networking/modules/securityGroup"
  cluster_name    = var.cluster_name
  vpc_id          = module.vpc.vpc_id
  cidr_block     = var.cidr_block
}



module "ec2-instance" {
  source = "./modules/ec2-instance"
  key_name_public_ec2    = var.key_name_public_ec2
  vpc_id                 = module.vpc.vpc_id
  subnet_id_public_1a    = module.subnets.subnet_id_public_1a
  subnet_id_public_1b    = module.subnets.subnet_id_public_1b
  subnet_id_public_1c    = module.subnets.subnet_id_public_1c
  ec2_instance_xlarge_sg = module.ec2-instance.ec2_instance_xlarge_sg
}







