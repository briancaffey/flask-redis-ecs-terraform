variable "region" {
  default = "us-east-1"
}

variable "vpc_id" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "port" {
  type    = number
  default = 6379
}

variable "cpu" {
  default     = null
  description = "CPU to allocate to container"
  type        = number
}

variable "memory" {
  default     = 128
  description = "Amount (in MiB) of memory used by the task"
  type        = number
}

variable "image" {
  type        = string
  description = "Container image from ECS to run"
}

variable "service_discovery_arn" {
  type        = string
  description = "Service discovery ARN"
}

variable "name" {
  type        = string
  description = "Name to use for container"
}

variable "command" {
  type        = list(string)
  default     = null
  description = "command used to start the container"
}

variable "ecs_cluster_id" {
  description = "ECS Cluster ID"
  type        = string
}

variable "ecs_service_iam_role_arn" {
  description = "ECS Service IAM Role ARN"
  type        = string
}

variable "ecs_sg_id" {
  type        = string
  description = "ECS Security Group ID"
}