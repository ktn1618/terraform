# modules/vpc_data/outputs.tf

output "vpc_id" {
  description = "The ID of the default VPC"
  value       = data.aws_vpc.default.id
}

output "subnet_ids" {
  description = "A list of subnet IDs in the default VPC"
  value       = data.aws_subnet_ids.default.ids
}
