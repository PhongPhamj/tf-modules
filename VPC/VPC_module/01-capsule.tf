resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  //Enable dns for some add-ons to connect to vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.VPC-name
  }
}

resource "aws_subnet" "example" {
  for_each = var.subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "${each.key}"
  }
}