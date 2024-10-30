# modules/database/outputs.tf

output "db_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.db_instance.id
}

output "db_instance_endpoint" {
  description = "The endpoint address of the RDS instance"
  value       = aws_db_instance.db_instance.endpoint
}

output "db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.db_instance.arn
}
