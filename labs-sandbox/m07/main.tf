resource "null_resource" "primary" {
  triggers = {
    name = "demo"
  }
}