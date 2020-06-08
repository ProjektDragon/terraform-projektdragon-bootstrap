resource "cloudflare_record" "bootstrap" {
  zone_id = lookup(var.cloudflare_zone_ids, var.cloudflare_domain_name)
  name    = var.cloudflare_record_name
  value   = var.cloudflare_record_value
  type    = var.cloudflare_record_type
  ttl     = 3600
}
