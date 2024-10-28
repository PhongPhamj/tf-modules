variable "region" {
  description = "AWS region to launch the instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "security_groups" {
  description = "List of security groups"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name to associate with the instance"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "user_data_file" {
  description = "Path to the user data script"
  type        = string
}