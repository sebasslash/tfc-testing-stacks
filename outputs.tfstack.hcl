output "ephemeral_uuid" {
  value = var.ephemeral_uuid
  type = string
  ephemeral = true
  sensitive = true
}
