# modules/ec2_instance/variables.tf

variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "security_groups" {
  description = "Security groups to associate with the instance"
  type        = list(string)
}

variable "user_data" {
  description = "User data script to use at instance launch"
  type        = string
  default     = ""
}