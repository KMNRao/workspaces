resource "aws_instance" "web" {
    ami           = "ami-010c2d0fd8c55129c"
    instance_type = lookup (var.instance.type, terraform.workspace) #"t2micro"
    #vpc_security_group_ids = [aws_secutity_group.roboshop-all.id]
    tags = {
        Name = "HelloTerraform"
    }
}