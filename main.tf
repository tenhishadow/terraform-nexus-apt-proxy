resource "nexus_repository_apt_proxy" "this" {
  name         = var.name
  distribution = var.distribution
  proxy {
    remote_url       = var.remote_url
    content_max_age  = 1440
    metadata_max_age = 720
  }
  storage {
    blob_store_name                = "default"
    strict_content_type_validation = true
  }
  negative_cache {
    enabled = true
    ttl     = 60
  }
  http_client {
    blocked    = false
    auto_block = true
    connection {
      retries                   = 3
      timeout                   = 60
      enable_circular_redirects = false
      enable_cookies            = false
      use_trust_store           = false
    }
  }
  online = true
  flat   = false
}
