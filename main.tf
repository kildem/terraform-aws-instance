resource "aws_instance" "hello_word" {
  ami = data.aws_ami.ubuntu.id
  subnet_id = data.aws_subnets.default.ids[0]
  instance_type = var.instance_type
}

resource "aws_internet_gateway" "main" {
  vpc_id = data.aws_vpc.default.id
}

resource "aws_nat_gateway" "example" {
  subnet_id = data.aws_subnets.default.id

  depends_on = [aws_internet_gateway.main]
}