terraform {
  backend "s3" {
    bucket         = "amalimart-app-terraform-state-888762632971"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "amalimart-app-terraform-locks"
    encrypt        = true
  }
}
