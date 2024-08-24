variable "region" {
  type        = string
  description = "The region the resources will be deployed to."
  default     = "us-east-1"
}

variable "db_name" {
  type        = string
  description = "The name of the database instance to be created."
}

variable "instance_class" {
  type        = string
  description = "The instance class of the database to be created."
}

variable "engine" {
  type        = string
  description = "The engine of the database instance to be created."

  validation {
    condition     = var.engine == "mssql" || var.engine == "mysql" || var.engine == "postgres" || var.engine == "oracle"
    error_message = "The engine must be one of the following engines: mssql, mysql, postgres, or oracle."
  }
}

variable "engine_version" {
  type        = string
  description = "The engine version of the database instance to be created."
}

variable "storage" {
  type        = number
  default     = 20
  description = "The storage for the database instance to be created. Default is 20."
}

variable "max_storage" {
  type        = number
  default     = 20
  description = "The maximum storage for the database instance to be created. Default is 20."
}

variable "iops" {
  type        = number
  description = "The iops of the database to be created. Default is null."
  default     = null
}

variable "apply_immediately" {
  type        = bool
  description = "Whether the creation is immediate or not. Default is false."
  default     = false
}

variable "performance_insights_enabled" {
  type        = bool
  description = "Whether the performance insights are enabled or not. Default is false."
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "The tags associated with the database to be created."
}
