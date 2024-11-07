# Creating RDS Instance
resource "aws_db_subnet_group" "default" {
  name          = "main"
  subnet_ids    = [aws_subnet.database_subnet_1.id, aws_subnet.application_subnet_2.id]
  tags = {
    Name = "DB Subnet group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage         = 20
  db_subnet_group_name      = aws_db_subnet_group.default.id
  engine                    = "mysql"
  engine_version            = "8.0.39"
  instance_class            = "db.t3.micro"
  multi_az                  = false
  db_name                   = "mydb"
  username                  = "username"
  password                  = "password"
  skip_final_snapshot       = true
  vpc_security_group_ids    = [aws_security_group.database_sg.id]
  storage_type              = "gp2"
}