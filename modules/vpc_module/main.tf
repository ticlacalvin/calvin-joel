resource "aws_vpc" "mysamplevpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"

  tags = {
    Name = "Joelvpc"
  }
}



resource "aws_internet_gateway" "myIGW" {
  vpc_id = aws_vpc.mysamplevpc.id

}

resource "aws_subnet" "public" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.mysamplevpc.id

}

resource "aws_subnet" "private" {
  cidr_block = "10.0.2.0/24"
  vpc_id     = aws_vpc.mysamplevpc.id


}
