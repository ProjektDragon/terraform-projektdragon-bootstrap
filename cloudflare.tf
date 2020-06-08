resource "cloudflare_record" "bootstrap" {
  count = var.cloudflare_enabled == true ? 1 : 0

  zone_id = var.cloudflare_zone_id
  name    = var.cloudflare_record_name
  value   = var.cloudflare_record_value
  type    = var.cloudflare_record_type
  ttl     = 3600
}
