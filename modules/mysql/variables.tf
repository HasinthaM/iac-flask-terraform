variable "name" {
  type    = string
  default = "iac"
}

variable "container_name" {
  type    = string
  default = "iac_mysql"
}

variable "root_password" {
  type = string
}

variable "database" {
  type    = string
  default = "flaskdb"
}

variable "user" {
  type    = string
  default = "flaskuser"
}

variable "password" {
  type = string
}

variable "network_name" {
  type = string
}
