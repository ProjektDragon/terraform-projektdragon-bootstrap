// Common variables associated with the bootstrap template
locals {
  github_organization = "ProjektDragon" // GitHub Organization name

  approved_users         = ["mpmsimo"]
  terraform_version      = "0.12.24"

  service_name = "bootstrap-template"
  service_description = "the most thoughtful description"
  service_url = "http://projektdragon.com"
}

// Cloudflare domain ID mapping
variable "cloudflare_zone_ids" {
  type        = map
  description = "Cloudflare Zone ID's for the ProjektDragon domain."
  default = {
    "projektdragon.dev" = "9d98ab1a557629db4371763f6c1ebe52"
  }
}

// Discord Webhook Settings
variable "discord_webhook_secret" {
  type    = string
}

// GitHub Repository Settings
variable "github_private_repo" {
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

variable "cloudflare_domain_name" {
  type    = string
  default = "projektdragon.dev"
}
