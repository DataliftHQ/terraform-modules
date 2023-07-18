module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  vpc_tags = local.vpc_tags
  tags     = local.tags
}

locals {
  tags_defaults = { ManagedBy = "datalift" }
  tags          = merge(local.tags_defaults, var.tags)

  vpc_tags_defaults = { ManagedBy = "datalift" }
  vpc_tags          = merge(local.vpc_tags_defaults, var.vpc_tags)
}
