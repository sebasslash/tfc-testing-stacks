deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 1
    ephemeral_uuid = "a8052c40-79c9-45d2-b660-54de8cb0b2dc"
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 10
    ephemeral_uuid = "a8052c40-79c9-45d2-b660-54de8cb0b2dc"
  }
}
