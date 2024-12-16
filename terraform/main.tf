provider "aws" {
    region = "ap-southeast-1"
  
}

resource "aws_instance" "dileep" {
    ami = "ami-0f935a2ecd3a7bd5c"
    instance_type = "t2.micro"
    security_groups = "default"
    key_name = "nagaraj28"
    user_data = file("grafana.sh")
    tags = {
      Name = "Geafana_server"
    }
  
}

resource "aws_instance" "dileep" {
    ami = "ami-0f935a2ecd3a7bd5c"
    instance_type = "t2.micro"
    security_groups = "default"
    key_name = "nagaraj28"
    tags = {
      Name = "Node-expo"
    }

}   
