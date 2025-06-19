module "apt_debian" {
  source       = "../../"
  name         = "debian"
  distribution = "stable stable-updates"
  remote_url   = "https://deb.debian.org/debian"
}

module "apt_debian_security" {
  source       = "../../"
  name         = "debian-security"
  distribution = "stable-security"
  remote_url   = "https://security.debian.org/debian-security"
}
