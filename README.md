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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudflare\_domain\_name | n/a | `string` | `"projektdragon.dev"` | no |
| cloudflare\_record\_name | Cloudflare DNS settings | `string` | `"live"` | no |
| cloudflare\_record\_type | n/a | `string` | `"CNAME"` | no |
| cloudflare\_record\_value | n/a | `string` | `"projektdragon.stream"` | no |
| cloudflare\_zone\_ids | Cloudflare Zone ID's for the ProjektDragon domain. | `map` | <pre>{<br>  "projektdragon.dev": "9d98ab1a557629db4371763f6c1ebe52"<br>}</pre> | no |
| discord\_webhook\_secret | Discord Webhook Settings | `string` | n/a | yes |
| github\_private\_repo | GitHub Repository Settings | `bool` | `true` | no |

## Outputs

No output.

