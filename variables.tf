variable "mysql_root_password" {
  type = string
}

variable "mysql_user" {
  type    = string
  default = "flaskuser"
}

variable "mysql_password" {
  type = string
}

variable "mysql_database" {
  type    = string
  default = "flaskdb"
}

variable "app_port" {
  type    = number
  default = 5000
}

