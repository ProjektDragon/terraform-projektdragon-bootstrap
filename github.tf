resource "github_repository" "bootstrap" {
  count = var.github_enabled == true ? 1 : 0

  name         = var.service_name
  description  = var.repository_description
  homepage_url = var.repository_url

  private = var.private_repo == true ? true : false

  has_issues    = true
  has_projects  = false
  has_wiki      = false
  has_downloads = false

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false

  archived = false

  topics = []

  // The following settings force recreation of the Terraform resource
  // they will need to be disabled for "legacy" (pre-IaC) repos.
  auto_init          = var.legacy_repo == true ? false : true
  gitignore_template = var.legacy_repo == true ? null : "Terraform"
  license_template   = var.legacy_repo == true ? null : "mit"
}

resource "github_branch_protection" "bootstrap" {
  count = var.github_enabled == true ? 1 : 0

  repository = github_repository.bootstrap[0].name
  branch     = "master"

  enforce_admins = false
  // require_signed_commits = false

  required_pull_request_reviews {
    require_code_owner_reviews = false
    dismiss_stale_reviews      = true
    dismissal_users            = var.approved_users
  }

  // Enable TFC status check
  required_status_checks {
    strict   = false
    contexts = var.tfc_enabled == true ? ["atlas/${var.tfc_organization}/${var.service_name}"] : []
  }

  restrictions {
    users = var.approved_users
  }
}
