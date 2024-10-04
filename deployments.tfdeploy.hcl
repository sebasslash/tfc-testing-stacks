deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 1
    ephemeral_uuid = input.ephemeral_uuid
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 10
  }
}
