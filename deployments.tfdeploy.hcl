deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 1
  }
}

publish_output "single" {
  value = deployment.single.id
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 10
    other_id  = upstream_input.other.id
  }
}

upstream_input "other" {
  type = "stack"
  source = "host-name/org-name/project-name/other"
}
