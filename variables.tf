// Common variables associated with the bootstrap template
locals {
  organization = "ProjektDragon" // Terraform Cloud + GitHub Organization name

  approved_users    = ["mpmsimo"]
  terraform_version = "0.12.24"
}

// Enable providers on a case by case basis.
variable "cloudflare_enabled" {
  type        = bool
  description = "Enable Cloudflare DNS record creation for zone ID specified."
  default     = false
}

variable "discord_enabled" {
  type        = bool
  description = "Reports GitHub status notifications for the repository to Discord webhook."
  default     = false
}

variable "github_enabled" {
  type        = bool
  description = "Creates a GitHub repository and sets up branch protection"
  default     = false
}

variable "terraform_cloud_enabled" {
  type        = bool
  description = "Creates a Terraform workspace to store and apply Terraform remotely."
  default     = false
}

// Common settings for each Application
variable "service_name" {
  type        = string
  description = "The name of the GitHub repository + Terraform Workspace."
  default     = "bootstrap-template"
}

variable "service_description" {
  type        = string
  description = "Brief description on what the service does or accomplishes."
  default     = "the most thoughtful description"
}

variable "service_url" {
  type        = string
  description = "GitHub repository URL."
  default     = "http://projektdragon.com"
}

// Cloudflare DNS settings
variable "cloudflare_domain_name" {
  type        = string
  description = "Name for the Cloudflare domain."
  default     = "projektdragon.dev"
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Zone ID for the Cloudflare domain."
}

variable "cloudflare_record_name" {
  type        = string
  description = "Subdomain to create"
  default     = "live"
}

variable "cloudflare_record_type" {
  type        = string
  description = "DNS Record type (A, CNAME, TXT)"
  default     = "CNAME"
}

variable "cloudflare_record_value" {
  type        = string
  description = "What the record should point to."
  default     = "projektdragon.stream"
}

// Discord Webhook Settings
variable "discord_webhook_secret" {
  type        = string
  description = ""
}

// GitHub Repository Settings
variable "github_manual_repo" {
  type        = bool
  description = "Was this repository created via the UI?"
  default     = false
}

variable "github_private_repo" {
  type        = bool
  description = "Is this repository hidden to the public?"
  default     = false
}

variable "github_has_issues" {
  type        = bool
  description = ""
  default     = true
}

variable "github_has_projects" {
  type        = bool
  description = ""
  default     = false
}

variable "github_has_wiki" {
  type        = bool
  description = ""
  default     = false
}

variable "github_has_downloads" {
  type        = bool
  description = ""
  default     = false
}

variable "github_gitignore_template" {
  type        = string
  description = "What language to generate a .gitignore for."
  default     = "Terraform"
}

variable "github_license_template" {
  type        = string
  description = "Software license"
  default     = "mit"
}

// Terraform Cloud Enterprise
variable "tfc_vcs_oauth_token" {
  type        = string
  description = ""
}

variable "tfc_auto_apply" {
  type        = bool
  description = "Automatically runs terraform apply."
  default     = false
}

variable "tfc_file_triggers_enabled" {
  type        = bool
  description = "Execute a terraform plan when .tf files are changed in a PR or commit."
  default     = true
}

variable "tfc_remote_execution" {
  type        = bool
  description = "When terraform cli commands are run, invoke in the cloud."
  default     = true
}

variable "tfc_working_directory" {
  type        = string
  description = "Path of .tf files relative to root directory."
  default     = ""
}
