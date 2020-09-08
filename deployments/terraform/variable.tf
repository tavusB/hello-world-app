variable "deployment_image" {
  default = "docker.tavusb.com/hello-world-app-dev-feature:95048d7"
}
variable "deployment_environment" {
    default = "stage"
}
variable "deployment_endpoint" {
  type = "map"
  default = {
    test  = "test.hello-world"
    dev  = "dev.hello-world"
    qa   = "qa.hello-world"
    prod = "hello-world"
    stage = "stage.hello-world"
  }
}
variable "google_domain_name" {
    default = "tavusb.com"
}
output "application_endpoint" {
  value = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}.${var.google_domain_name}"
}