# Recommendation System ECS service running in private subnets

# IAM execution role for the recommendation system
resource "aws_iam_role" "recommendation_exec" {
  name               = "${var.project_name}-recommendation-exec"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = { Service = "ecs-tasks.amazonaws.com" },
      Action    = "sts:AssumeRole"
    }]
  })
}

# Attach the secrets access policy if provided
resource "aws_iam_role_policy_attachment" "recommendation_secrets_access" {
  role       = aws_iam_role.recommendation_exec.name
  policy_arn = var.secrets_access_policy_arn
  
  depends_on = [aws_iam_role.recommendation_exec]
  
  lifecycle {
    ignore_changes = [policy_arn]
  }
}

data "aws_iam_policy" "execution" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role_policy_attachment" "ecs_task_execution_role" {
  role       = aws_iam_role.recommendation_exec.name
  policy_arn = data.aws_iam_policy.execution.arn
}

# ECS Task Definition
resource "aws_ecs_task_definition" "recommendation" {
  family                   = "${var.project_name}-recommendation-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.recommendation_cpu
  memory                   = var.recommendation_memory
  execution_role_arn       = aws_iam_role.recommendation_exec.arn
  task_role_arn            = var.task_role_arn

  container_definitions = jsonencode([
    {
      name         = "recommendation"
      image        = var.recommendation_image
      essential    = true
      portMappings = [
        {
          containerPort = var.recommendation_port
          hostPort      = var.recommendation_port
          protocol      = "tcp"
        }
      ]
      
      environment = [
        {
          name  = "NODE_ENV"
          value = var.environment
        },
        {
          name  = "PORT"
          value = tostring(var.recommendation_port)
        },
        {
          name  = "REDIS_HOST"
          value = "localhost"
        },
        {
          name  = "SQL_SERVER_HOST"
          value = var.db_host
        },
        {
          name  = "SQL_SERVER_PORT"
          value = tostring(var.db_port)
        },
        {
          name  = "SQL_SERVER_DATABASE"
          value = var.db_name
        },
        {
          name  = "CORS_ALLOWED_ORIGINS"
          value = "https://${var.frontend_subdomain}.${var.domain_name}"  # In production, replace with specific domains
        },
        {
          name  = "CORS_ALLOWED_METHODS"
          value = "GET,POST,PUT,DELETE,OPTIONS,HEAD"
        },
        {
          name  = "CORS_ALLOWED_HEADERS"
          value = "*"
        },
        {
          name  = "CORS_ALLOW_CREDENTIALS"
          value = "true"
        }
      ]
     
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = "/ecs/${var.project_name}-recommendation"
          awslogs-region        = var.aws_region
          awslogs-stream-prefix = "ecs"
        }
      }
      
      secrets = var.secrets_arn != "" ? [
        {
          name      = "SQL_SERVER_USER"
          valueFrom = "${var.secrets_arn}:DB_USERNAME::"
        },
        {
          name      = "SQL_SERVER_PASSWORD"
          valueFrom = "${var.secrets_arn}:DB_PASSWORD::"
        }
      ] : []
    },
    # Redis sidecar container
    {
      name  = "redis"
      image = "redis:latest"
      portMappings = [
        {
          containerPort = 6379
          hostPort      = 6379
          protocol      = "tcp"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = "/ecs/${var.project_name}-recommendation-redis"
          awslogs-region        = var.aws_region
          awslogs-stream-prefix = "ecs"
        }
      }
    }
  ])
}

# CloudWatch Log Group
resource "aws_cloudwatch_log_group" "recommendation" {
  name              = "/ecs/${var.project_name}-recommendation"
  retention_in_days = 30
}

resource "aws_cloudwatch_log_group" "recommendation_redis" {
  name              = "/ecs/${var.project_name}-recommendation-redis"
  retention_in_days = 30
}

# Security Group for Recommendation Service
resource "aws_security_group" "recommendation_sg" {
  name        = "${var.project_name}-recommendation-sg"
  description = "Security group for recommendation service"
  vpc_id      = var.vpc_id

  # Allow inbound HTTP traffic from ALB
  ingress {
    from_port       = var.recommendation_port
    to_port         = var.recommendation_port
    protocol        = "tcp"
    security_groups = [var.alb_security_group_id]
  }

  # Allow Redis traffic between containers
  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    self        = true
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-recommendation-sg"
  }
}

# ECS Service
resource "aws_ecs_service" "recommendation" {
  name            = "${var.project_name}-recommendation-svc"
  cluster         = var.ecs_cluster_id
  task_definition = aws_ecs_task_definition.recommendation.arn
  desired_count   = var.recommendation_desired_count
  launch_type     = "FARGATE"

  # Load balancer configuration
  load_balancer {
    target_group_arn = var.alb_target_group_arn
    container_name   = "recommendation"
    container_port   = var.recommendation_port
  }

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.recommendation_sg.id]
    assign_public_ip = false
  }

  # Ensure we don't have duplicate load balancer blocks
  lifecycle {
    ignore_changes = [task_definition, load_balancer]
  }

  depends_on = [
    aws_iam_role_policy_attachment.ecs_task_execution_role,
    aws_cloudwatch_log_group.recommendation,
    aws_cloudwatch_log_group.recommendation_redis
  ]
}
