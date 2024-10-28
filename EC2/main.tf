module "ec2_module" {
  source            = "./EC2_module"
  region            = var.region
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  security_groups   = var.security_groups
  key_name          = var.key_name
  public_key_path   = var.public_key_path
  instance_name     = var.instance_name
  user_data_file    = var.user_data_file
}