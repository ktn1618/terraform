# modules/database/variables.tf

variable "allocated_storage" {
  description = "The amount of storage allocated for the database (in GB)"
  type        = number
  default     = 20
}

variable "auto_minor_version_upgrade" {
  description = "Whether to allow automatic minor version upgrades"
  type        = bool
  default     = true
}

variable "storage_type" {
  description = "The storage type for the database (standard, gp2, or io1)"
  type        = string
  default     = "standard"
}

variable "engine" {
  description = "The database engine to use (e.g., postgres, mysql)"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "12"
}

variable "instance_class" {
  description = "The instance type of the RDS instance (e.g., db.t3.micro)"
  type        = string
  default     = "db.t3.micro"
}

variable "username" {
  description = "Master username for the database"
  type        = string
}

variable "password" {
  description = "Master password for the database"
  type        = string
  sensitive   = true
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot on deletion"
  type        = bool
  default     = true
}
