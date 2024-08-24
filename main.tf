resource "aws_db_instance" "database" {
  db_name                      = var.db_name
  instance_class               = var.instance_class
  engine                       = var.engine
  engine_version               = var.engine_version
  allocated_storage            = var.storage
  max_allocated_storage        = var.max_storage
  iops                         = var.iops
  apply_immediately            = var.apply_immediately
  performance_insights_enabled = var.performance_insights_enabled
  tags                         = var.tags
}
