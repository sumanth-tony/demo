# Creating 1st EC2 Instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami                           = "ami-06b21ccaeff8cd686"
  instance_type                 = "t2.micro"
  count                         = 1
  key_name                      = "oct-2024"
  vpc_security_group_ids        = [aws_security_group.demosg.id]
  subnet_id                     = aws_subnet.public_subnet_1.id
  associate_public_ip_address   = true
  user_data                     = file("data.sh")
  tags = {
    Name = "First Public Instance"
  }
}

# Creating 2nd EC2 Instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami                           = "ami-06b21ccaeff8cd686"
  instance_type                 = "t2.micro"
  count                         = 1
  key_name                      = "oct-2024"
  vpc_security_group_ids        = [aws_security_group.demosg.id]
  subnet_id                     = aws_subnet.public_subnet_2.id
  associate_public_ip_address   = true
  user_data                     = file("data.sh")
  tags = {
    Name = "Second Public Instance"
  }
}