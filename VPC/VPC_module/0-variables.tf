variable "VPC-name" {
  type = string
  default = "terraform-initiated"
}

variable "subnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))

  default = {
    public-subnet1 = {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "ap-southeast-2a"
    }
    public-subnet2 = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "ap-southeast-2b"
    }
  }
}