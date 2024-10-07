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
