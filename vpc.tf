variable "dev_vpc1_cidr_block" {}  
variable "dev_subnet1_cidr_block" {} 
variable "dev_subnet2_cidr_block" {} 
variable "environment" {}

resource "aws_vpc" "vpc-01" {
  cidr_block           = var.dev_vpc1_cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "vpc-01"
    Environment = "${var.environment}"
  }
}
