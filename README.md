# terraform-projektdragon-bootstrap
This is a templated way to create a set of infrastructure resources needed for development of an Open Source project.
- GitHub Repository
- Discord Webhook for GitHub status notifications
- DNS using `projektdragon.dev`

TODO:
- Automated creation of images from Dockerfiles
- Persistant application hosting (via Kubernetes?)

## Usage
### Generating documents
Ensure [terraform-docs](https://github.com/segmentio/terraform-docs) is installed.
- `brew install terraform-docs`

Include the bootstrap template README and then from the Terraform module.
`make docs`

### Cloud Tooling used
The GitHub repositories within ProjektDragon will be bootstrapped using this module here.

In order to support this workflow, the following cloud tools are being used:
- [GitHub.com/ProjektDragon](https://github.com/ProjektDragon)
- [Terraform Cloud](https://app.terraform.io/app/ProjektDragon/workspaces)

If you need additional access to either of above tools contact Reulan#0003 on Discord.


# Terraform module specifications
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.24 |
| cloudflare | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | ~> 2.0 |
| github | n/a |
| tfe | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudflare\_domain\_name | Name for the Cloudflare domain. | `string` | `"projektdragon.dev"` | no |
| cloudflare\_enabled | Enable Cloudflare DNS record creation for zone ID specified. | `bool` | `false` | no |
| cloudflare\_record\_name | Subdomain to create | `string` | `"live"` | no |
| cloudflare\_record\_type | DNS Record type (A, CNAME, TXT) | `string` | `"CNAME"` | no |
| cloudflare\_record\_value | What the record should point to. | `string` | `"projektdragon.stream"` | no |
| cloudflare\_zone\_id | Zone ID for the Cloudflare domain. | `string` | n/a | yes |
| discord\_enabled | Reports GitHub status notifications for the repository to Discord webhook. | `bool` | `false` | no |
| discord\_webhook\_secret | Discord Webhook Settings | `string` | n/a | yes |
| github\_enabled | Creates a GitHub repository and sets up branch protection | `bool` | `false` | no |
| github\_gitignore\_template | What language to generate a .gitignore for. | `string` | `"Terraform"` | no |
| github\_has\_downloads | n/a | `bool` | `false` | no |
| github\_has\_issues | n/a | `bool` | `true` | no |
| github\_has\_projects | n/a | `bool` | `false` | no |
| github\_has\_wiki | n/a | `bool` | `false` | no |
| github\_license\_template | Software license | `string` | `"mit"` | no |
| github\_private\_repo | Is this repository hidden to the public? | `bool` | `false` | no |
| service\_description | Brief description on what the service does or accomplishes. | `string` | `"the most thoughtful description"` | no |
| service\_name | The name of the GitHub repository + Terraform Workspace. | `string` | `"bootstrap-template"` | no |
| service\_url | GitHub repository URL. | `string` | `"http://projektdragon.com"` | no |
| terraform\_cloud\_enabled | Creates a Terraform workspace to store and apply Terraform remotely. | `bool` | `false` | no |
| tfc\_auto\_apply | Automatically runs terraform apply. | `bool` | `false` | no |
| tfc\_file\_triggers\_enabled | Execute a terraform plan when .tf files are changed in a PR or commit. | `bool` | `true` | no |
| tfc\_remote\_execution | When terraform cli commands are run, invoke in the cloud. | `bool` | `true` | no |
| tfc\_vcs\_oauth\_token | Terraform Cloud Enterprise | `string` | n/a | yes |
| tfc\_working\_directory | Path of .tf files relative to root directory. | `string` | `""` | no |

## Outputs

No output.

