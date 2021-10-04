output "elasticsearch" {
  value = cloudflare_record.elasticsearch.hostname
}

output "kibana" {
  value = cloudflare_record.kibana.hostname
}
