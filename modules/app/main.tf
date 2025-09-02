resource "docker_image" "flask_app" {
  name = var.image_name

  build {
    context    = var.build_path
    dockerfile = var.dockerfile
  }

  keep_locally = true
}

resource "docker_container" "flask_app" {
  name  = var.container_name
  image = docker_image.flask_app.name

  env = [
    "DB_HOST=${var.db_host}",
    "DB_PORT=${var.db_port}",
    "DB_USER=${var.db_user}",
    "DB_PASSWORD=${var.db_password}",
    "DB_NAME=${var.db_name}"
  ]

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  # mounts { type = "bind" source = "..." target = "..." }  # optional

  networks_advanced {
    name = var.network_name
  }
}
