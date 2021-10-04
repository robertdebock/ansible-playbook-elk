resource "digitalocean_ssh_key" "elk" {
  name       = "vault"
  public_key = file("${path.module}/files/id_rsa.pub")
}

resource "digitalocean_droplet" "elasticsearch" {
  image     = "fedora-34-x64"
  name      = "elasticsearch.meinit.nl"
  region    = "ams3"
  size      = "4gb"
  ssh_keys  = [digitalocean_ssh_key.elk.fingerprint]
}

resource "digitalocean_droplet" "kibana" {
  image     = "fedora-34-x64"
  name      = "kibana.meinit.nl"
  region    = "ams3"
  size      = "4gb"
  ssh_keys  = [digitalocean_ssh_key.elk.fingerprint]
}

data "cloudflare_zones" "default" {
  filter {
    name = "meinit.nl"
  }
}

resource "cloudflare_record" "elasticsearch" {
  zone_id = data.cloudflare_zones.default.zones[0].id
  name    = "elasticsearch"
  value   = digitalocean_droplet.elasticsearch.ipv4_address
  type    = "A"
  ttl     = 300
}

resource "cloudflare_record" "kibana" {
  zone_id = data.cloudflare_zones.default.zones[0].id
  name    = "kibana"
  value   = digitalocean_droplet.kibana.ipv4_address
  type    = "A"
  ttl     = 300
}
