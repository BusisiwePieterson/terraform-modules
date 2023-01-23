# configure aws provider
provider "aws" {
  region = var.region
  profile = "programmatic-user"
}

# create vpc
module "name" {
  source = "../modules/vpc"
  region = var.region
  project_name = var.project_name
  vpc_cidr = var.vpc_cidr
  pulic_subnet_az1_cidr = var.pulic_subnet_az1_cidr
  pulic_subnet_az2_cidr = var.pulic_subnet_az2_cidr
  private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
}

