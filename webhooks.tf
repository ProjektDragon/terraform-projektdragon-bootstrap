resource "github_repository_webhook" "discord" {
  count = var.discord_enabled == true ? 1 : 0

  repository = github_repository.bootstrap[0].name

  configuration {
    url          = "https://discordapp.com/api/webhooks/${var.discord_webhook_secret}/github"
    content_type = "json"
    insecure_ssl = false
  }

  active = true

  events = ["push"]
}
