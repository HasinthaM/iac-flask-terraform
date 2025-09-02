terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 3.0.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "docker" {
  # Uses the local Docker socket by default
}
