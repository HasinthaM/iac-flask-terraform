module "network" {
  source = "./modules/network"
  name   = "iac_network"
}

module "mysql" {
  source         = "./modules/mysql"
  name           = "iac"
  container_name = "iac_mysql"
  root_password  = var.mysql_root_password
  database       = var.mysql_database
  user           = var.mysql_user
  password       = var.mysql_password
  network_name   = module.network.name
}

module "app" {
  source         = "./modules/app"
  image_name     = "flask_app:local"
  build_path     = "${path.module}/app"
  container_name = "iac_flask_app"
  db_host        = module.mysql.container_name
  db_port        = var.mysql_port
  db_user        = var.mysql_user
  db_password    = var.mysql_password
  db_name        = var.mysql_database
  network_name   = module.network.name
  external_port  = var.app_port
}
