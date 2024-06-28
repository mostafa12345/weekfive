
resource "aws_subnet" "subnet-01a" {
  vpc_id     = aws_vpc.vpc-01.id
  cidr_block = var.dev_subnet1_cidr_block
  availability_zone = "us-east-1b"

  tags = {
    Name = "subnet-01a"
    Environment = "${var.environment}"
  }
}
resource "aws_subnet" "subnet-01b" {
  vpc_id     = aws_vpc.vpc-01.id
  cidr_block = var.dev_subnet2_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet-01b"
    Environment = "${var.environment}"
  }
}
