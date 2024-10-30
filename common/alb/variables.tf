# modules/security_group/variables.tf

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "instance-security-group"
}

variable "from_port" {
  description = "Starting port for the inbound rule"
  type        = number
  default     = 8080
}

variable "to_port" {
  description = "Ending port for the inbound rule"
  type        = number
  default     = 8080
}

variable "protocol" {
  description = "Protocol for the security group rule (e.g., tcp)"
  type        = string
  default     = "tcp"
}

variable "cidr_blocks" {
  description = "CIDR blocks to allow for the security group rule"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
