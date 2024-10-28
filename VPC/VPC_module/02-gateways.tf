# internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.VPC-name}-igw"
  }
}

////////////////////////////////////////////////////////////

# static ip for NAT gateway so that if NATgw goes down, current connections will not be terminated because of incorrect ip-address when NATgw is up again 
resource "aws_eip" "nat" {
  domain = "vpc" //chỉ dùng eip này cho VPC này thôi
  tags = {
    Name = "${var.VPC-name}-nat_eip"
  }
}
# NAT gateway
resource "aws_nat_gateway" "nat" {
  depends_on = [ aws_eip.nat, aws_internet_gateway.igw ]
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.public_zone1.id

  tags = {
    Name = "${var.VPC-name}-nat_gw"
  }
}