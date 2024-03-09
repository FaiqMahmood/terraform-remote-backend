terraform {
  backend "s3" {
    bucket         = "faiq-s3-demo-tfstate" # change this
    key            = "faiq/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
