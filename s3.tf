locals {
  env="local"
}

# Create a VPC
resource "aws_s3_bucket" "this" {
  bucket = "mytestbucket-lpnu5"

  tags = {
    Name         = "My bucket"
    Enviroonment = "Dev"
  }
}

resource "aws_s3_bucket" "this2" {
  bucket = "mytestbucket-lpnu6"

  tags = {
    Name         = "My bucket"
    Enviroonment = local.env
  }
}
