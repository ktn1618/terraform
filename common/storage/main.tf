# modules/database/main.tf

resource "aws_db_instance" "db_instance" {
  allocated_storage          = var.allocated_storage
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  storage_type               = var.storage_type
  engine                     = var.engine
  engine_version             = var.engine_version
  instance_class             = var.instance_class
  username                   = var.username
  password                   = var.password
  skip_final_snapshot        = var.skip_final_snapshot
}
