identity_token "test" {
  audience = ["test.workload.identity"]
}

deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 2
    ephemeral_uuid = identity_token.test.jwt
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 11
    ephemeral_uuid = identity_token.test.jwt
  }
}

upstream_input "pet_nulls" {
  type = "stack"
  source = "app.terraform.io/hashicorp/stacks/pet-nulls-stack-parent"
}
