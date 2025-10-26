locals {
  common_tags = {
    Project_name = var.project_name
    Environment = var.environment
    Terraform = true
  }
  common_name = "${var.project_name}-${var.environment}"
}