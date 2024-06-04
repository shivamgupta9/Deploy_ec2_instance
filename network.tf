resource "aws_vpc" "testvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "us-east-1" {
  cidr_block        = "10.0.1.0/24"
  vpc_id            = aws_vpc.testvpc.id
  availability_zone = var.zone1
}

resource "aws_subnet" "us-east-2" {
  cidr_block        = "10.0.2.0/24"
  vpc_id            = aws_vpc.testvpc.id
  availability_zone = var.zone2
}