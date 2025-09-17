# RDS MySQL (private)

resource "aws_db_subnet_group" "this" {
  name       = "${var.project_name}-db-subnet-group"
  subnet_ids = var.private_subnet_ids
  tags       = { Name = "${var.project_name}-db-subnet-group" }
}

resource "aws_security_group" "db_sg" {
  name_prefix = "${var.project_name}-db-sg-"
  vpc_id      = var.vpc_id
  
  tags = {
    Name        = "${var.project_name}-db-sg"
    Environment = var.environment
    ManagedBy   = "terraform"
  }

  # Allow MySQL access from ECS tasks (if security group ID is provided)
  dynamic "ingress" {
    for_each = var.ecs_security_group_id != "" ? [1] : []
    content {
      from_port       = 3306
      to_port         = 3306
      protocol        = "tcp"
      security_groups = [var.ecs_security_group_id]
      description     = "Allow MySQL access from ECS tasks"
    }
  }

  # Allow MySQL access from within VPC (for debugging)
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
    description = "Allow MySQL access from within VPC"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
}

resource "aws_db_instance" "mysql" {
  # Use a consistent identifier
  identifier             = "amalimart-app-mysql"
  
  # Restore from snapshot
  snapshot_identifier    = "amalimart-app-mysql"
  instance_class         = "db.t3.micro"
  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  skip_final_snapshot    = true
  publicly_accessible    = false
  deletion_protection    = false
  
  # Add tags for better identification
  tags = {
    Name        = "${var.project_name}-mysql"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
  
  # These parameters are required but will be overridden by the snapshot
  # They need to be provided but won't affect the restored instance
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"
  
  # These will be set from the snapshot but need to be provided
  username                = var.db_username
  password                = var.db_password
  db_name                 = var.db_name
  
  # Force new resource if the instance already exists
  lifecycle {
    ignore_changes = [
      # Ignore changes to these attributes as they'll be managed by the snapshot
      engine_version,
      instance_class,
      username,
      password,
      db_name
    ]
  }
}
