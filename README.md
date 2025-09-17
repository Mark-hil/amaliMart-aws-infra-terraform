# amaliMart AWS Infrastructure with Terraform

This repository contains Terraform configurations for managing the AWS infrastructure for amaliMart. It includes a remote state backend using AWS S3 for state storage and DynamoDB for state locking.

## Table of Contents
- [Remote State Setup](#remote-state-setup)
  - [Prerequisites](#prerequisites)
  - [Initial Setup](#initial-setup)
  - [Using the Remote Backend](#using-the-remote-backend)
  - [State Locking](#state-locking)
  - [Troubleshooting](#troubleshooting)
- [Infrastructure Components](#infrastructure-components)
- [Usage](#usage)
- [Variables](#variables)

## Remote State Setup

### Prerequisites
- AWS CLI configured with appropriate credentials
- Terraform >= 1.3.0
- An existing AWS Account
- IAM permissions to create S3 buckets and DynamoDB tables

### Initial Setup

1. **First-time Setup**
   - Uncomment the `backend "s3"` block in `main.tf`
   - Run `terraform init` to initialize the backend
   - Run `terraform apply` to create the S3 bucket and DynamoDB table

2. **Backend Configuration**
   The backend is configured in `main.tf` to use:
   - S3 bucket: `${var.project_name}-terraform-state-${account_id}`
   - DynamoDB table: `${var.project_name}-terraform-locks`
   - Region: `eu-west-1` (default)

### Using the Remote Backend

After the initial setup:

1. **Initialize the Backend**
   ```bash
   terraform init -backend-config=backend.hcl
   ```

2. **Apply Changes**
   ```bash
   terraform plan
   terraform apply
   ```

### State Locking

State locking is automatically enabled using DynamoDB. The lock table is created with the following settings:
- Table name: `${var.project_name}-terraform-locks`
- Billing mode: PAY_PER_REQUEST
- Hash key: `LockID` (String)

### Troubleshooting

#### Locking Issues
If you encounter state lock errors:
1. First, verify no one else is running Terraform
2. If needed, force unlock (use with caution):
   ```bash
   terraform force-unlock LOCK_ID
   ```
   Or use:
   ```bash
   terraform apply -lock=false
   ```
   Only as a last resort.

#### Deleting Resources
To destroy all resources:
1. First, empty the S3 bucket:
   ```bash
   aws s3 rm s3://${var.project_name}-terraform-state-${account_id} --recursive
   ```
2. Then run:
   ```bash
   terraform destroy
   ```

## Infrastructure Components

The infrastructure includes the following modules:
- `network`: VPC, subnets, and networking components
- `alb`: Application Load Balancer configuration
- `ecs`: ECS cluster and service definitions
- `rds`: RDS database configuration
- `remote-state`: S3 and DynamoDB for Terraform state management

## Usage

1. Clone the repository
2. Configure AWS credentials
3. Update variables in `terraform.tfvars`
4. Initialize and apply:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Variables

Key variables can be set in `terraform.tfvars`:

```hcl
project_name = "amalimart-app"
environment  = "dev"
region      = "eu-west-1"
```

For a full list of variables, see `variables.tf`.