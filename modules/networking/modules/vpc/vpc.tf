#VPC
resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"   
    
    tags = {
        Name = "${var.cluster_name}"
    }
}

#Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.cluster_name}-igw"
  }
}


