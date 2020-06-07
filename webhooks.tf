resource "github_repository_webhook" "discord" {
  repository = github_repository.bootstrap.name

  configuration {
    url          = "https://discordapp.com/api/webhooks/${local.discord_webhook_secret}/github"
    content_type = "json"
    insecure_ssl = false
  }

  active = true

  events = ["push"]
}
