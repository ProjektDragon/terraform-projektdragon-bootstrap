resource "github_repository" "bootstrap" {
  name         = local.service_name
  description  = local.service_description
  homepage_url = local.service_url

  private = var.github_private_repo == true ? true : false

  has_issues    = true
  has_projects  = false
  has_wiki      = false
  has_downloads = false

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false

  archived = false

  topics = []

  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "mit"
}

resource "github_branch_protection" "bootstrap" {
  repository = github_repository.bootstrap.name
  branch     = "master"

  enforce_admins = false

  required_pull_request_reviews {
    require_code_owner_reviews = false
    dismiss_stale_reviews      = true
    dismissal_users            = local.approved_users
  }

  restrictions {
    users = local.approved_users
  }
}
