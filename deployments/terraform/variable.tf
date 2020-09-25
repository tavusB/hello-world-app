variable "deployment_image" {
  default = "docker.tavusb.com/hello-world-app-dev-feature:95048d7"
}
variable "deployment_environment" {
    default = "stage"
}
variable "deployment_endpoint" {
  type = "map"
  default = {
    dev  = "dev.hello"
    qa   = "qa.hello"
    prod = "hello"
    stage = "stage.hello"
  }
}
variable "google_domain_name" {
    default = "tavusb.com"
}
output "application_endpoint" {
  value = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}.${var.google_domain_name}"
}
variable "release_version" {
  default = "0.0.1"
  }
