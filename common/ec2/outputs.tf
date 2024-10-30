# modules/ec2_instance/outputs.tf

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = aws_instance.this.public_dns
}
