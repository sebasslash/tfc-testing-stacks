deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 1
  }
}

deployment "many" {
  inputs = {
    instances = 10
  }
}
