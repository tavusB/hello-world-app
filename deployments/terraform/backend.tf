terraform {
  backend "gcs" {
    bucket  = "tavus_bucket"
    prefix  = "stage/hello-world"
    project = "fuchi-287613"
  }
}
