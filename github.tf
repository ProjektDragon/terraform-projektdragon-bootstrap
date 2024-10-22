resource "github_repository" "bootstrap" {
  count = var.github_enabled == true ? 1 : 0

  name         = var.service_name
  description  = var.service_description
  homepage_url = var.cloudflare_enabled == true ? cloudflare_record.bootstrap[0].hostname : var.service_url

  private = var.github_private_repo == true ? true : false

  has_issues    = var.github_has_issues
  has_projects  = var.github_has_projects
  has_wiki      = var.github_has_wiki
  has_downloads = var.github_has_downloads

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false

  archived = false

  topics = []

  auto_init          = var.github_manual_repo == true ? false : true
  gitignore_template = var.github_manual_repo == true ? null : var.github_gitignore_template
  license_template   = var.github_manual_repo == true ? null : var.github_license_template
}

resource "github_branch_protection" "bootstrap" {
  count = var.github_enabled == true ? 1 : 0

  repository = github_repository.bootstrap[0].name
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
