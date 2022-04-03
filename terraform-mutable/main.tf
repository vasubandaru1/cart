module "sample" {
  source = "git::https://github.com/vasubandaru1/terraform-mutable.git//app-module"
  instance_type  = var.INSTANCE_TYPE

}