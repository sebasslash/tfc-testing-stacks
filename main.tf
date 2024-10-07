terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

resource "random_pet" "this" {
  prefix = var.ephemeral_uuid
  length = 4
}

output "name" {
  value = random_pet.this.id
}
