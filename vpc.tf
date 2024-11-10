resource "aws_vpc" "vpc1" {
  
  cidr_block = "192.168.0.0/16"
  tags = {
    Name= "Jenkins-TerraVPC"
  }
  
}
resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "192.168.1.0/24"
  tags = {
    Name = "Jenkins-TerraSubnet"
  }
}