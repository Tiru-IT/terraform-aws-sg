resource "aws_security_group" "main" {
  name        = var.sg_name
  vpc_id      = var.vpc_id
  description = var.sg_description

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${local.common_name}-${var.sg_name}"
    }

  )
}