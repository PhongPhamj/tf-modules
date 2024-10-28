resource "aws_instance" "ec2_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  security_groups             = var.security_groups
  key_name                    = var.key_name
  user_data                   = file(var.user_data_file)

  tags = {
    Name = var.instance_name
  }
}

# Generate a new key pair
# resource "aws_key_pair" "key_pair" {
#   key_name   = var.key_name
#   public_key = file(var.public_key_path)
# }

output "instance_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}