resource "random_id" "rand" {
  byte_length = 8
}

deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 2
    ephemeral_uuid = data.random_id.rand.hex
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 11
    ephemeral_uuid = data.random_id.rand.hex
  }
}
