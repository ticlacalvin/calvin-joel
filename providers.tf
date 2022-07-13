provider "aws" {
  alias  = "us"
  region = "us-east-2"
}

provider "aws" {
  alias  = "europe"
  region = "eu-west-1"
}
