terraform {
  required_version = ">= 1.3.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.0"
    }
  }

  cloud {

    organization = "Kaczorro"

    workspaces {
      name = "Kaczorro2"
    }
  }
}

provider "digitalocean" {
  token = var.token
}

resource "digitalocean_droplet" "main" {
  name  = "Kaczorro"
  image = "ubuntu-22-04-x64"
  size  = "s-1vcpu-1gb"
}

