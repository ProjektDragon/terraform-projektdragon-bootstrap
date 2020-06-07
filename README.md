# terraform-projektdragon-bootstrap
This is a templated way to create a set of infrastructure resources needed for development of an Open Source project.
- GitHub Repository
- Discord Webhook for GitHub status notifications
- DNS using `projektdragon.dev`

TODO:
- Automated creation of images from Dockerfiles
- Persistant application hosting (via Kubernetes?)

## Requirements

| Name | Version |
|------|---------|
| cloudflare | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | ~> 2.0 |
| github | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudflare\_record\_name | Cloudflare DNS settings | `string` | `"live"` | no |
| cloudflare\_record\_type | n/a | `string` | `"CNAME"` | no |
| cloudflare\_record\_value | n/a | `string` | `"projektdragon.stream"` | no |
| cloudflare\_zone\_ids | Cloudflare Zone ID's for the ProjektDragon domain. | `map` | <pre>{<br>  "projektdragon.dev": "9d98ab1a557629db4371763f6c1ebe52"<br>}</pre> | no |
| domain\_name | n/a | `string` | `"projektdragon.dev"` | no |
| private\_repo | n/a | `bool` | `true` | no |
| repository\_description | n/a | `string` | `"the most thoughtful description"` | no |
| repository\_name | GitHub Repository Settings | `string` | n/a | yes |
| repository\_url | n/a | `string` | `"http://projektdragon.com"` | no |

## Outputs

No output.

