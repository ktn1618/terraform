# modules/ec2_instance/main.tf

resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = var.security_groups
  user_data     = var.user_data
}
