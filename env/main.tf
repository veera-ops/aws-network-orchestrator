module "dxgw" {
  source = "../modules/dxgw"
  environment = var.environment
  request_id  = var.request_id
}

module "tgw" {
  source = "../modules/tgw"

  account_id   = var.account_id
  account_name = var.account_name
  region       = var.region
  environment  = var.environment
  request_id   = var.request_id
}

module "vpc" {
  source = "../modules/vpc"

  account_id   = var.account_id
  account_name = var.account_name
  region       = var.region
  vpc_cidr     = var.vpc_cidr
  vpc_required = var.vpc_required
  environment  = var.environment
  request_id   = var.request_id
}

module "association" {
  source = "../modules/association"

  dxgw_id  = module.dxgw.dxgw_id
  tgw_id   = module.tgw.tgw_id
  vpc_cidr = var.vpc_cidr
}
