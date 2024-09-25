deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 1
    upstream_stack_id = upstream_input.upstream_stack.id
  }
}

publish_output "single" {
  value = deployment.single.id
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 10
    upstream_stack_id = upstream_input.upstream_stack.id
  }
}

upstream_input "upstream_stack" {
  type = "stack"
  source = "host-name/org-name/project-name/upstream-stack"
}
