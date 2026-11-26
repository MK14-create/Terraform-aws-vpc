resource "aws_vpc" "myvpc" {
  tags = {
    Name        = "Terraform VPC"
    Environment = "Dev"
  }

  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
}

//subnet creation
resource "aws_subnet" "my_subnet-1" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "Terraform Subnet-1"
  }
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "my_subnet-2" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "Terraform Subnet-2"
  }
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

//internet gateway creation
resource "aws_internet_gateway" "my_igw" {
  tags = {
    Name = "Terraform IGW"
  }
  vpc_id = aws_vpc.myvpc.id
}

//route table creation
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "Terraform Route Table"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
}

//subnet association with route table
resource "aws_route_table_association" "my_subnet-1_association" {
  subnet_id      = aws_subnet.my_subnet-1.id
  route_table_id = aws_route_table.my_route_table.id
}

resource "aws_route_table_association" "my_subnet-2_association" {
  subnet_id      = aws_subnet.my_subnet-2.id
  route_table_id = aws_route_table.my_route_table.id
}
