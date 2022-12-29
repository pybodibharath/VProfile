resource "aws_instance" "ec2_instance" {
    ami = "ami-00ff962d94b87fe06"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.SG]
    tags = {Name = "HTTP_SERVER"}
    key_name = "jenkin"
    count = 1
}
