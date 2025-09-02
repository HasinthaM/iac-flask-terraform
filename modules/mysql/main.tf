resource "docker_volume" "mysql_data" {
  name = "${var.name}_mysql_data"
}

resource "docker_image" "mysql" {
  name = "mysql:8.0"
}

resource "docker_container" "mysql" {
  name  = var.container_name
  image = docker_image.mysql.name

  env = [
    "MYSQL_ROOT_PASSWORD=${var.root_password}",
    "MYSQL_DATABASE=${var.database}",
    "MYSQL_USER=${var.user}",
    "MYSQL_PASSWORD=${var.password}"
  ]

  mounts {
    type   = "volume"
    source = docker_volume.mysql_data.name
    target = "/var/lib/mysql"
  }

  networks_advanced {
    name = var.network_name
  }

  restart = "always"
}
