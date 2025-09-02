output "container_name" {
  value = docker_container.flask_app.name
}

output "image_name" {
  value = docker_image.flask_app.name
}
