required_providers {
  null = {
    source  = "hashicorp/null"
    version = "~> 3.1"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.3"
  }
}

provider "null" "main" {}
provider "random" "main" {}

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

component "pet" {
  source = "./pet"
  inputs = {
    prefix = var.prefix
    ephemeral_uuid = var.ephemeral_uuid
  }
  providers = {
    random = provider.random.main
  }
}

component "nulls" {
  source = "./nulls"
  inputs = {
    pet       = component.pet.name
    instances = var.instances
  }
  providers = {
    null = provider.null.main
  }
}
