resource "aws_security_group" "ec2_instance_xlarge_sg" { 
	name        = "ec2_instance_xlarge_sg" 
    description = "Allow traffic and enable SSH" 
    vpc_id      = var.vpc_id
    
    ingress {
      from_port       = "22" 
      to_port         = "22" 
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]   
   }  

    ingress {
      from_port       = "7051" 
      to_port         = "7051" 
      protocol        = "tcp"
      description     = "listen"
      cidr_blocks     = ["0.0.0.0/0"]   
   } 
    ingress {
      from_port       = "9443" 
      to_port         = "9443" 
      protocol        = "tcp"
      description     = "operation"
      cidr_blocks     = ["0.0.0.0/0"]   
   } 
    ingress {
      from_port       = "8125" 
      to_port         = "8125" 
      protocol        = "tcp"
      description     = "metrics"
      cidr_blocks     = ["0.0.0.0/0"]   
   } 
    ingress {
      from_port       = "5984" 
      to_port         = "5984" 
      protocol        = "tcp"
      description     = "couchdb"
      cidr_blocks     = ["0.0.0.0/0"]   
   } 
    ingress {
      from_port       = "7052" 
      to_port         = "7052" 
      protocol        = "tcp"
      description     = "chaincodeListenAddress"
      cidr_blocks     = ["0.0.0.0/0"]   
   }
    
  egress { 
  		from_port   = "0" 
      to_port     = "0" 
      protocol    = "-1" 
      cidr_blocks = ["0.0.0.0/0"] 
  } 
  
  tags = { 
  	Name = "ec2_instance_xlarge" 
  }
}