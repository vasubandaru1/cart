module "cart" {
  source = "git::https://github.com/vasubandaru1/terraform-mutable.git//app-module"
  INSTANCE_TYPE = var.INSTANCE_TYPE
  ENV   = var.ENV
  OD_INSTANCE_COUNT = var.OD_INSTANCE_COUNT
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  COMPONENT           = "cart"
  PORT                = 8080
  IS_PRIVATE_LB        = true
  LB_RULE_PRIORITY     = 100

}

output "INSTANCE_IDS" {
  value = module.cart.INSTANCE_IDS
}