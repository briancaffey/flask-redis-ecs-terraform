resource "aws_ecs_task_definition" "this" {
  family       = "${terraform.workspace}-${var.name}"
  network_mode = "awsvpc"
  container_definitions = jsonencode([
    {
      name      = var.name
      image     = var.image
      cpu       = var.cpu
      memory    = var.memory
      essential = true
      links     = []
      command   = var.command
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = "redis"
          "awslogs-region"        = var.region
          "awslogs-stream-prefix" = "redis"
        }
      }
      portMappings = [
        {
          containerPort = var.port
          hostPort      = var.port
          protocol      = "tcp"
        }
      ]
    }
  ])
  # task_role_arn = var.task_role_arn
}


resource "aws_ecs_service" "this" {
  name            = "${terraform.workspace}-${var.name}"
  cluster         = var.ecs_cluster_id
  task_definition = aws_ecs_task_definition.this.arn
  # iam_role        = var.ecs_service_iam_role_arn
  desired_count = 1

  service_registries {
    registry_arn   = var.service_discovery_arn
    container_name = var.name
  }

  network_configuration {
    security_groups = [var.ecs_sg_id]
    subnets         = var.public_subnets
  }
}