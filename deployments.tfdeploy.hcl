deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 1
    upstream_stack_id = upstream_input.upstream_stack.id
  }
}

deployment "many" {
  inputs = {
    prefix    = upstream_input.my_stack.name
    instances = 10
    my_stack_id = upstream_input.my_stack.id
  }
}
