# Creating 1st Web Subnet
resource "aws_subnet" "public_subnet_1" {
  vpc_id                    = aws_vpc.demovpc.id
  cidr_block                = var.subnet_cidr
  map_public_ip_on_launch   = true
  availability_zone         = "us-east-1a"
  tags = {
    Name = "Web Subnet 1"
  }
}

# Creating 2nd Web Subnet
resource "aws_subnet" "public_subnet_2" {
  vpc_id                    = aws_vpc.demovpc.id
  cidr_block                = var.subnet1_cidr
  map_public_ip_on_launch   = true
  availability_zone         = "us-east-1b"
  tags = {
    Name = "Web Subnet 2"
  }
}

# Creating 1st Application Subnet
resource "aws_subnet" "application_subnet_1" {
  vpc_id                    = aws_vpc.demovpc.id
  cidr_block                = var.subnet2_cidr
  map_public_ip_on_launch   = false
  availability_zone         = "us-east-1a"
  tags = {
    Name = "Application Subnet 1"
  }
}

# Creating 2nd Application Subnet
resource "aws_subnet" "application_subnet_2" {
  vpc_id                    = aws_vpc.demovpc.id
  cidr_block                = var.subnet3_cidr
  map_public_ip_on_launch   = false
  availability_zone         = "us-east-1b"
  tags = {
    Name = "Application Subnet 2"
  }
}

# Creating 1st Database Subnet
resource "aws_subnet" "database_subnet_1" {
  vpc_id                    = aws_vpc.demovpc.id
  cidr_block                = var.subnet4_cidr
  availability_zone         = "us-east-1a"
  tags = {
    Name = "Database Subnet 1"
  }
}

# Creating 2nd Database Subnet
resource "aws_subnet" "database_subnet_2" {
  vpc_id                    = aws_vpc.demovpc.id
  cidr_block                = var.subnet5_cidr
  availability_zone         = "us-east-1b"
  tags = {
    Name = "Database Subnet 2"
  }
}