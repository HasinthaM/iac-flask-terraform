variable "image_name" {
  type    = string
  default = "flask_app:local"
}

variable "build_path" {
  type    = string
  default = "../../app"
}

variable "dockerfile" {
  type    = string
  default = "Dockerfile"
}

variable "container_name" {
  type    = string
  default = "iac_flask_app"
}

variable "db_host" {
  type = string
}

variable "db_port" {
  type    = string
  default = "3306"
}

variable "db_user" {
  type = string
}

variable "db_password" {
  type = string
}

variable "db_name" {
  type = string
}

variable "network_name" {
  type = string
}

variable "internal_port" {
  type    = number
  default = 5000
}

variable "external_port" {
  type    = number
  default = 5000
}
