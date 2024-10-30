# modules/security_group/main.tf

resource "aws_security_group" "this" {
  name = var.security_group_name
}

resource "aws_security_group_rule" "inbound_rule" {
  count             = length(var.inbound_rules)
  type              = "ingress"
  security_group_id = aws_security_group.this.id

  from_port   = var.inbound_rules[count.index].from_port
  to_port     = var.inbound_rules[count.index].to_port
  protocol    = var.inbound_rules[count.index].protocol
  cidr_blocks = var.inbound_rules[count.index].cidr_blocks
}

resource "aws_security_group_rule" "outbound_rule" {
  count             = length(var.outbound_rules)
  type              = "egress"
  security_group_id = aws_security_group.this.id

  from_port   = var.outbound_rules[count.index].from_port
  to_port     = var.outbound_rules[count.index].to_port
  protocol    = var.outbound_rules[count.index].protocol
  cidr_blocks = var.outbound_rules[count.index].cidr_blocks
}
