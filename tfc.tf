resource "tfe_workspace" "bootstrap" {
  count = var.terraform_cloud_enabled == true ? 1 : 0

  name                  = local.service_name
  organization          = "ProjektDragon"
  auto_apply            = var.tfc_auto_apply
  file_triggers_enabled = var.tfc_file_triggers_enabled
  terraform_version     = local.terraform_version

  operations        = var.tfc_remote_execution
  working_directory = var.tfc_working_directory

  vcs_repo {
    identifier         = "${local.organization}/${local.service_name}"
    ingress_submodules = false
    oauth_token_id     = var.tfc_vcs_oauth_token
  }
}
