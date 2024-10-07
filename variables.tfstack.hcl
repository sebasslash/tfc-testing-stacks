variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

variable "ephemeral_uuid" {
  type = string
  ephemeral = true
  sensitive = true
}
