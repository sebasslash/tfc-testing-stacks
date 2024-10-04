terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

variable "ephemeral_uuid" {
  type = string
  ephemeral = true
}

resource "random_pet" "this" {
  prefix = join("-", [var.prefix, var.ephemeral_uuid])
  length = 4
}

output "name" {
  value = random_pet.this.id
}
