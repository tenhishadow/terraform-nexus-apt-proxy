terraform {
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = "2.6.0"
    }
  }
}

provider "nexus" {
  insecure = false
  url      = "https://nexus.example.com"
}
