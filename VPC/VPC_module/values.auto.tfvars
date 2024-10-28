subnets = {
  public-subnet1 = {
    cidr_block        = "10.0.1.0/24"
    availability_zone = "ap-southeast-2a"
  }
  public-subnet2 = {
    cidr_block        = "10.0.2.0/24"
    availability_zone = "ap-southeast-2b"
  }
  private-subnet3 = {
    cidr_block        = "10.0.3.0/24"
    availability_zone = "ap-southeast-2a"
  }
  private-subnet4 = {
    cidr_block        = "10.0.4.0/24"
    availability_zone = "ap-southeast-2b"
  }
}
