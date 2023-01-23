# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "busi-terraform-remote-state"
    key = "techmax-website-ecs.tfstate"
    region = "us-east-1"
    profile = "programmatic-user"
  }
}