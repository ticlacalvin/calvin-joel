module "us" {
  source = "./modules/vpc_module"
  providers = {
    aws = aws.us
  }

}

module "europe" {
  source = "./modules/vpc_module"
  providers = {
    aws = aws.europe

  }
}
