resource "aws_instance" "ec2_instance_t2micro" {
  # Setting the AMI to the ID of the Ubuntu 20.04 AMI from the data store
  ami = "ami-006d3995d3a6b963b"

  count = 1

  subnet_id = var.subnet_id_public_1a
   
  instance_type = "t2.micro"
  
  key_name = var.key_name_public_ec2

  vpc_security_group_ids = [var.ec2_instance_xlarge_sg]

  user_data = "${file("${path.module}/install_docker.sh")}"
  
  root_block_device { 
      volume_type           = "gp2" 
      volume_size           = 40
      delete_on_termination = false 
  } 

  tags = {
    Name = "TF-instance-t2micro-${count.index}"
    Env = "stg"
  }
}

resource "aws_eip" "my-eip" {
  count = 1
  vpc        = true
  tags = {
    Name = "eip-xlarge-${count.index}"
  }
}

resource "aws_eip_association" "eip_assoc" {
  count = 1
  instance_id   = aws_instance.ec2_instance_t2micro[count.index].id
  allocation_id = aws_eip.my-eip[count.index].id
}
