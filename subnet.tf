resource "aws_subnet" "testpublic1" {
  vpc_id = aws_vpc.test.id
  cidr_block = "10.40.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "${var.vpc_name}-publicsubnet1"
  }
}
resource "aws_subnet" "testpublic2" {
  vpc_id = aws_vpc.test.id
  cidr_block = "10.40.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "${var.vpc_name}-publicsubnet2"
  }
}