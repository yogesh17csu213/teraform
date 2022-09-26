#Subnets

#Public

resource "aws_subnet" "public-1a" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.1.0.0/19"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "${var.cluster_name}-public-${var.region}a"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}

resource "aws_subnet" "public-1b" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.1.32.0/19"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "${var.cluster_name}-public-${var.region}b"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}

resource "aws_subnet" "public-1c" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.1.64.0/19"
  availability_zone       = "${var.region}c"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "${var.cluster_name}-public-${var.region}c"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}

#Private Subnets

resource "aws_subnet" "private-1a" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.1.96.0/19"
  availability_zone = "${var.region}a"

  tags = {
    "Name"                            = "${var.cluster_name}-private-${var.region}a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.cluster_name}"      = "owned"
  }
}

resource "aws_subnet" "private-1b" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.1.128.0/19"
  availability_zone = "${var.region}b"

  tags = {
    "Name"                            = "${var.cluster_name}-private-${var.region}b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.cluster_name}"      = "owned"
  }
}

resource "aws_subnet" "private-1c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.1.160.0/19"
  availability_zone = "${var.region}c"

  tags = {
    "Name"                            = "${var.cluster_name}-private-${var.region}c"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.cluster_name}"      = "owned"
  }
}