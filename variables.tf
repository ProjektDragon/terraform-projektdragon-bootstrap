// Common variables associated with the bootstrap template
locals {
  github_organization = "ProjektDragon"  // GitHub Organization name

  discord_webhook_secret = null // Discord Webhook route for channel
  approved_users = ["mpmsimo"]
  terraform_version = "0.12.24"
}

// Cloudflare domain ID mapping
variable "cloudflare_zone_ids" {
  type        = map
  description = "Cloudflare Zone ID's for the ProjektDragon domain."
  default = {
    "projektdragon.dev"     = "9d98ab1a557629db4371763f6c1ebe52"
  }
}

// GitHub Repository Settings
variable "repository_name" {
  type    = string
  default = "bootstrap-template"
}

variable "repository_description" {
  type    = string
  default = "the most thoughtful description"
}

variable "repository_url" {
  type    = string
  default = "http://projektdragon.com"
}

variable "private_repo" {
  type    = bool
  default = true
}

// Cloudflare DNS settings
variable "cloudflare_record_name" {
  default = "live"
  type    = string
}

variable "cloudflare_record_type" {
  default = "CNAME"
  type    = string
}

variable "cloudflare_record_value" {
  default = "projektdragon.stream"
  type    = string
}

variable "domain_name" {
  type    = string
  default = "projektdragon.dev"
}
