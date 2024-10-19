terraform {
  backend "s3" {
    bucket = "terraform-bucket-10oct"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}