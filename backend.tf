terraform {
  backend "s3" {
    bucket = "terraform-wipluv"
    key    = "terraform/dev/helloapp"
    region = "us-east-1"
  }
}
