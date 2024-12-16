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

upstream_input "pet_nulls" {
  type = "stack"
  source = "localterraform.com/hashicorp/stacks/pet-nulls-stack-parent"
}
