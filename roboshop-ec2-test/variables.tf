variable "ami_id"{
  default     = "ami-09c813fb71547fc4f"
  
}

variable "sg_id" {
  default     = ["sg-0ea09789b4af40ad8"]
 
}

variable "instance_type" {
  default     = "t3.micro"
 
}

variable "tags" {
  default     = {
    Name = "module-demo"
  }

}

