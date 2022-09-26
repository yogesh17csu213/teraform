#NAT

resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "${var.cluster_name}-nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.cluster_name}-nat"
      }

  depends_on = [var.igw_id]
}