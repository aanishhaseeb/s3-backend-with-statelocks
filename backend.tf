terraform {
  backend "s3" {
    bucket = "backend-store-bucket-9831"
    region = "us-east-1"
    key = "terraform.tfstate"   
    
  }
}