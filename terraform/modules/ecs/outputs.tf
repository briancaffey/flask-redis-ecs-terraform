output "ecs_sg_id" {
  value = aws_security_group.this.id
}

output "cluster_id" {
  value = aws_ecs_cluster.this.id
}

output "cluster_arn" {
  value = aws_ecs_cluster.this.arn
}

output "cluster_name" {
  value = "${terraform.workspace}-cluster"
}

output "service_iam_role_arn" {
  value = aws_iam_role.ecs_service.arn
}

output "task_role_arn" {
  value = aws_iam_role.ecs_task.arn
}

output "registry_arn" {
  value = aws_service_discovery_service.this.arn
}