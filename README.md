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
| cloudflare\_domain\_name | Cloudflare DNS settings | `string` | `"projektdragon.dev"` | no |
| cloudflare\_enabled | Enable providers on a case by case basis. | `bool` | `false` | no |
| cloudflare\_record\_name | n/a | `string` | `"live"` | no |
| cloudflare\_record\_type | n/a | `string` | `"CNAME"` | no |
| cloudflare\_record\_value | n/a | `string` | `"projektdragon.stream"` | no |
| cloudflare\_zone\_id | n/a | `string` | n/a | yes |
| discord\_enabled | n/a | `bool` | `false` | no |
| discord\_webhook\_secret | Discord Webhook Settings | `string` | n/a | yes |
| github\_enabled | n/a | `bool` | `false` | no |
| github\_gitignore\_template | n/a | `string` | `"Terraform"` | no |
| github\_has\_downloads | n/a | `bool` | `false` | no |
| github\_has\_issues | n/a | `bool` | `true` | no |
| github\_has\_projects | n/a | `bool` | `false` | no |
| github\_has\_wiki | n/a | `bool` | `false` | no |
| github\_license\_template | n/a | `string` | `"mit"` | no |
| github\_private\_repo | GitHub Repository Settings | `bool` | `false` | no |
| terraform\_cloud\_enabled | n/a | `bool` | `false` | no |
| tfc\_auto\_apply | n/a | `bool` | `false` | no |
| tfc\_file\_triggers\_enabled | n/a | `bool` | `true` | no |
| tfc\_remote\_execution | n/a | `bool` | `true` | no |
| tfc\_vcs\_oauth\_token | Terraform Cloud Enterprise | `string` | n/a | yes |
| tfc\_working\_directory | n/a | `string` | `""` | no |

## Outputs

No output.

