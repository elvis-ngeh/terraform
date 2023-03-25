provider "aws" {
  region = "us-east-1"
  profile = "Elvis"
}
# Declare the VPC resource in the root module
resource "aws_vpc" "demo" {
  resource "aws_vpc" "teravpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "prod_vpc"
  }
}
resource "aws_subnet" "demo" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.demo.id

  tags = {
    Name = "Demo Subnet"
  }
}