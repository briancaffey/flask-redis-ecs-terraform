variable "alb_default_tg_arn" {
  description = "The ARN of the default target group"
  type        = string
}

variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 1
}

variable "ecs_cluster_id" {
  description = "ECS Cluster ID"
  type        = string
}

variable "ecs_service_iam_role_arn" {
  description = "ECS Service IAM Role ARN"
  type        = string
}

variable "task_role_arn" {
  description = "Task Role ARN"
  type        = string
}

variable "command" {
  default     = null
  type        = list(string)
  description = "Command to run in Docker container"
}

variable "env_vars" {
  type        = list(object({ name = string, value = string }))
  description = "Environment variables to set in Docker container"
}

variable "image" {
  type        = string
  description = "Container image from ECS to run"
}

variable "log_group_name" {
  type        = string
  description = "Name of the CloudWatch Logs group"
}

variable "log_stream_prefix" {
  type        = string
  description = "Name of the CloudWatch Logs stream"
}

variable "log_retention_in_days" {
  default = 1
  type    = number
}

variable "region" {
  default     = "us-east-1"
  description = "AWS region"
  type        = string
}

variable "cpu" {
  default     = null
  description = "CPU to allocate to container"
  type        = number
}

variable "memory" {
  default     = null
  description = "Amount (in MiB) of memory used by the task"
  type        = number
}

variable "name" {
  description = "Name to use for the service and task"
  type        = string
}

variable "port" {
  default     = 80
  description = "Port to expose on the container"
  type        = number
}

variable "priority" {
  description = "Priority for the listener rule"
  type        = number
}


variable "path_patterns" {
  description = "Path patterns to match"
  type        = list(string)
}

variable "listener_arn" {
  description = "Listener ARN"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "health_check_path" {
  description = "Path to check for health"
  default     = "/"
  type        = string
}

variable "health_check_healthy_threshold" {
  description = "Number of consecutive health checks successes required"
  default     = 2
  type        = number
}


variable "health_check_interval" {
  description = "Time between health checks"
  default     = 7
  type        = number
}

variable "public_subnets" {
  description = "Subnets to use for the app"
  type        = list(string)
}

variable "ecs_sg_id" {
  description = "ECS Security Group ID"
  type        = string
}

variable "execution_role_arn" {
  description = "Execution Role ARN"
  type        = string
}