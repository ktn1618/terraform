# modules/security_group/variables.tf

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "inbound_rules" {
  description = "List of inbound rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "outbound_rules" {
  description = "List of outbound rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
