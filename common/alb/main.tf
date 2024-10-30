# modules/security_group/main.tf

resource "aws_security_group" "this" {
  name = var.security_group_name
}

resource "aws_security_group_rule" "allow_inbound" {
  type              = "ingress"
  security_group_id = aws_security_group.this.id
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  cidr_blocks       = var.cidr_blocks
}
