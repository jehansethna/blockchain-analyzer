terraform {
  backend "s3" {
    bucket = "jeh-tf-state"
    key    = "terraform/state"
    region = "us-east-1"
  }
}