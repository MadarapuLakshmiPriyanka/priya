resource "aws_security_group" "testsg" {
  vpc_id = aws_vpc.test.id
  name = "devops"
  description = "Allow Both inbound and outbound rules"
  ingress {
    to_port = 0
    from_port = 0
    protocol = -1
    cidr_blocks =["0.0.0.0/0"]
  }
  egress {
    to_port = 0
    from_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Name" = "${var.vpc_name}-security"
  }
}