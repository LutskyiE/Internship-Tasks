resource "aws_vpc" "aws_t3_vpc" {
  cidr_block                       = var.vpc_cidr
  instance_tenancy                 = "default"
  enable_dns_support               = "true"
  enable_dns_hostnames             = "true"
  assign_generated_ipv6_cidr_block = "false"
  tags = {
    Name = "t3_vpc"
  }
}


resource "aws_subnet" "private_subnet" {
  cidr_block              = "172.31.12.0/24"
  vpc_id                  = aws_vpc.aws_t3_vpc.id
  map_public_ip_on_launch = "false"
  //availability_zone       = var.region
  tags = {
    Name = "aws_private_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  cidr_block              = "172.31.1.0/24"
  vpc_id                  = aws_vpc.aws_t3_vpc.id
  map_public_ip_on_launch = "true"
  //availability_zone       = var.region
  tags = {
    Name = "aws_public_subnet"
  }
}
