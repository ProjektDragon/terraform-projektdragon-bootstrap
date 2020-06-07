terraform {
  required_version = ">= 0.12.24"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ProjektDragon"

    workspaces {
      name = "terraform-projektdragon-bootstrap"
    }
  }
}

provider "github" {
  organization = "ProjektDragon"
}

provider "cloudflare" {
  version = "~> 2.0"
}
