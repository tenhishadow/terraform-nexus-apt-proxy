variable "name" {
  type        = string
  description = "The name of the Nexus APT proxy repository."
}

variable "distribution" {
  type        = string
  description = "The Debian/Ubuntu distribution this repository will proxy (e.g., 'focal', 'buster')."
}

variable "remote_url" {
  type        = string
  description = "The upstream APT repository URL (e.g., https://deb.debian.org/debian)."
}
