#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hey, Welcome to My 3-tier Architecture Page from $(hostname -f)" > /var/www/html/index.html 