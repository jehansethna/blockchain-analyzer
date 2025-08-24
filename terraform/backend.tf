terraform {
  backend "s3" {
    bucket = "blockchain-analyzer-statefile"
    key    = "terraform/state"
    region = "us-east-1"
  }
}