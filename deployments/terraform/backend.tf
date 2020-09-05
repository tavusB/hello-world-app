terraform {
  backend "gcs" {
    bucket  = "tavus_bucket"
    prefix  = "tools/hello-world"
    project = "fuchi-287613"
  }
}
