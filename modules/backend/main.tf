# Backend ECS service running in private subnets (no public ALB)

# IAM execution role with permissions for ECS and Secrets Manager
resource "aws_iam_role" "exec" {
  name               = "${var.project_name}-backend-exec"
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
resource "aws_iam_role_policy_attachment" "secrets_access" {
  role       = aws_iam_role.exec.name
  policy_arn = var.secrets_access_policy_arn
  
  # This depends_on ensures the role exists before we try to attach the policy
  depends_on = [aws_iam_role.exec]
  
  # Use lifecycle to ignore changes to the policy ARN
  lifecycle {
    ignore_changes = [policy_arn]
  }
}

data "aws_iam_policy" "execution" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role_policy_attachment" "exec_attach" {
  role       = aws_iam_role.exec.name
  policy_arn = data.aws_iam_policy.execution.arn
}

# Log group
resource "aws_cloudwatch_log_group" "backend" {
  name              = "/ecs/${var.project_name}-backend"
  retention_in_days = 7
}

# Security group allowing intra-VPC traffic on backend port
resource "aws_security_group" "backend_sg" {
  name_prefix = "${var.project_name}-backend-sg-"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = var.backend_port
    to_port         = var.backend_port
    protocol        = "tcp"
    security_groups = [var.alb_security_group_id]  # Allow traffic from ALB
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ECS Cluster
resource "aws_ecs_cluster" "this" {
  name = "${var.project_name}-cluster"
}

resource "aws_ecs_task_definition" "backend" {
  family                   = "${var.project_name}-backend-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.backend_cpu
  memory                   = var.backend_memory
  execution_role_arn       = aws_iam_role.exec.arn

  container_definitions = jsonencode([
    {
      name      = "backend",
      image     = var.backend_image,
      essential = true,
      portMappings = [{
        containerPort = var.backend_port,
        protocol      = "tcp"
      }],
      environment = [
        for key, value in {
          for key, value in var.backend_env : key => value
          if !contains([
            "DB_USERNAME",
            "DB_PASSWORD",
            "JWT_SECRET",
            "APP_EMAIL_PASSWORD",
            "GOOGLE_CLIENT_SECRET",
            "FACEBOOK_CLIENT_SECRET",
            "GOOGLE_CLIENT_ID",
            "FACEBOOK_CLIENT_ID",
            "AWS_ACCESS_KEY",
            "AWS_SECRET_KEY",
            "AWS_S3_ACCESS_KEY",
            "AWS_S3_SECRET_KEY",
            "AWS_SNS_SENDER_ID",
            "PAYSTACK_SECRET_KEY",
            "PAYSTACK_BASE_URL",
            "JASYPT_ENCRYPTOR_PASSWORD",
          ], key)
        } : {
          name  = key
          value = value
        } if key != ""
      ],
      secrets = var.secrets_arn != "" ? [
        # Database credentials
        {
          name      = "SPRING_DATASOURCE_USERNAME",
          valueFrom = "${var.secrets_arn}:DB_USERNAME::"
        },
        {
          name      = "SPRING_DATASOURCE_PASSWORD",
          valueFrom = "${var.secrets_arn}:DB_PASSWORD::"
        },
        # JWT Configuration
        {
          name      = "JWT_SECRET",
          valueFrom = "${var.secrets_arn}:JWT_SECRET::"
        },
        # Email Configuration
        {
          name      = "APP_EMAIL_PASSWORD",
          valueFrom = "${var.secrets_arn}:APP_EMAIL_PASSWORD::"
        },
        # OAuth2 Configuration
        {
          name      = "GOOGLE_CLIENT_ID",
          valueFrom = "${var.secrets_arn}:GOOGLE_CLIENT_ID::"
        },
        {
          name      = "GOOGLE_CLIENT_SECRET",
          valueFrom = "${var.secrets_arn}:GOOGLE_CLIENT_SECRET::"
        },
        {
          name      = "FACEBOOK_CLIENT_ID",
          valueFrom = "${var.secrets_arn}:FACEBOOK_CLIENT_ID::"
        },
        {
          name      = "FACEBOOK_CLIENT_SECRET",
          valueFrom = "${var.secrets_arn}:FACEBOOK_CLIENT_SECRET::"
        },
        # AWS Configuration
        {
          name      = "AWS_ACCESS_KEY",
          valueFrom = "${var.secrets_arn}:AWS_ACCESS_KEY::"
        },
        {
          name      = "AWS_SECRET_KEY",
          valueFrom = "${var.secrets_arn}:AWS_SECRET_KEY::"
        },
        {
          name      = "AWS_S3_ACCESS_KEY",
          valueFrom = "${var.secrets_arn}:AWS_S3_ACCESS_KEY::"
        },
        {
          name      = "AWS_S3_SECRET_KEY",
          valueFrom = "${var.secrets_arn}:AWS_S3_SECRET_KEY::"
        },
        {
          name      = "AWS_SNS_SENDER_ID",
          valueFrom = "${var.secrets_arn}:AWS_SNS_SENDER_ID::"
        },
        {
          name      = "PAYSTACK_SECRET_KEY",
          valueFrom = "${var.secrets_arn}:PAYSTACK_SECRET_KEY::"
        },
        {
          name      = "PAYSTACK_BASE_URL",
          valueFrom = "${var.secrets_arn}:PAYSTACK_BASE_URL::"
        },
        {
          name      = "JASYPT_ENCRYPTOR_PASSWORD",
          valueFrom = "${var.secrets_arn}:JASYPT_ENCRYPTOR_PASSWORD::"
        }
      ] : [],
      logConfiguration = {
        logDriver = "awslogs",
        options   = {
          awslogs-region        = var.region,
          awslogs-group         = aws_cloudwatch_log_group.backend.name,
          awslogs-stream-prefix = "ecs"
        }
      }
    },
    {
      name      = "redis",
      image     = var.redis_image,
      essential = false,
      portMappings = [{
        containerPort = var.redis_port,
        protocol      = "tcp"
      }]
    }
  ])
}

resource "aws_ecs_service" "backend" {
  name            = "${var.project_name}-backend-svc"
  cluster         = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.backend.arn
  desired_count   = var.backend_desired_count
  launch_type     = "FARGATE"
  
  # Deployment configuration
  deployment_minimum_healthy_percent = 50
  deployment_maximum_percent         = 200
  health_check_grace_period_seconds  = 300  # 5 minutes
  
  # Deployment controller settings
  deployment_controller {
    type = "ECS"
  }

  # Load balancer configuration
  load_balancer {
    target_group_arn = var.alb_target_group_arn
    container_name   = "backend"
    container_port   = var.backend_port
  }

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.backend_sg.id]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = var.alb_target_group_arn
    container_name   = "backend"
    container_port   = var.backend_port
  }
}
