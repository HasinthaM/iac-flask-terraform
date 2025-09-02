output "container_name" {
  value = docker_container.mysql.name
}
output "volume_name" {
  value = docker_volume.mysql_data.name
}
