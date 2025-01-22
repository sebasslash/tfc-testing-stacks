identity_token "test" {
  audience = ["test.workload.identity"]
}

deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 2
    other_id  = upstream_input.pet_nulls.ids_from_simple
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 11
    other_id  = upstream_input.pet_nulls.ids_from_simple
  }
}

deployment "complex" {
  inputs = {
    prefix    = "complex"
    instances = 1
    other_id  = upstream_input.pet_nulls.ids_from_complex
  }
}

upstream_input "pet_nulls" {
  type = "stack"
  source = "tfcdev-3f4ca3c8.ngrok.app/hashicorp/stacks-test/pet-nulls-stack-parent"
}
