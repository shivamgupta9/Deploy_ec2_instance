resource "aws_instance" "us-east-1" {
  provider      = aws.east1
  ami           = var.ami
  instance_type = "t2.small"
  subnet_id     = aws_subnet.us-east-1.id
}

# Create an EC2 instance in us-east-2
resource "aws_instance" "us-east-2" {
  provider      = aws.east2
  ami           = var.ami
  instance_type = "t2.small"
  subnet_id     = aws_subnet.us-east-2.id
}
