package main

deny[msg] {                             
  input.kind == "Deployment"
  image := input.spec.template.spec.containers[_].image
  not contains(image, ":")
  msg := sprintf("image '%v' doesn't specify a tag", [image])
}

deny[msg] {                             
  input.kind == "Deployment"
  image := input.spec.template.spec.containers[_].image
  [image_name, image_tag] = split(image, ":")
  image_tag == "latest"
  msg := sprintf("image '%v' uses the latest tag", [image])
}
