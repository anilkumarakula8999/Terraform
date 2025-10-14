resource "aws_instance" "terraform" {
    ami= "ami-09c813fb71547fc4f"
    instance_type="t3.micro"
    vpc_security_group_ids = [aws_security_group.new_security.id]

    tags= {

        Name= "test_instace"
    }
}

resource "aws_security_group" "new_security" {
  name   = "using_terraform"
  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }
    tags= {
        Name="new_terraform"
    }
}

