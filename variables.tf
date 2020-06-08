// Common variables associated with the bootstrap template
locals {
  organization = "ProjektDragon" // Terraform Cloud + GitHub Organization name

  approved_users         = ["mpmsimo"]
  terraform_version      = "0.12.24"

  service_name = "bootstrap-template"
  service_description = "the most thoughtful description"
  service_url = "http://projektdragon.com"
}

// Enable providers on a case by case basis.
variable "cloudflare_enabled" {
  type = bool
  default = false
}

variable "discord_enabled" {
  type = bool
  default = false
}

variable "github_enabled" {
  type = bool
  default = false
}

variable "terraform_cloud_enabled" {
  type = bool
  default = false
}

// Cloudflare DNS settings
variable "cloudflare_domain_name" {
  type    = string
  default = "projektdragon.dev"
}

variable "cloudflare_zone_id" {
  type        = string
}

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

// Discord Webhook Settings
variable "discord_webhook_secret" {
  type    = string
}

// GitHub Repository Settings
variable "github_private_repo" {
  type    = bool
  default = false
}

variable "github_has_issues" {
  type    = bool
  default = true 
}

variable "github_has_projects" {
  type    = bool
  default = false
}

variable "github_has_wiki" {
  type    = bool
  default = false
}

variable "github_has_downloads" {
  type    = bool
  default = false
}

variable "github_gitignore_template" {
  type = string
  default = "Terraform"
}

variable "github_license_template" {
  type = string
  default = "mit"
}

// Terraform Cloud Enterprise
variable "tfc_vcs_oauth_token" {
  type = string
}

variable "tfc_auto_apply" {
  type = bool
  default = false
}

variable "tfc_file_triggers_enabled" {
  type = bool
  default = true 
}

variable "tfc_remote_execution" {
  type = bool
  default = true
}

variable "tfc_working_directory" {
  type = string
  default = ""
}
