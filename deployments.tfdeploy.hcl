deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 2
    ephemeral_uuid = "b8052c40-79c9-45d2-b660-54de8cb0b2dc"
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 11
    ephemeral_uuid = "b8052c40-79c9-45d2-b660-54de8cb0b2dc"
  }
}
