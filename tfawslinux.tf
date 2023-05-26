provider "aws"{
        region='ap-south-1"
}
resource "aws_instance" "new"{
    count="1"
    ami ="ami-0607784b46cbe5816"
    instance type='t2-micro"
    key name= "tfnew"
    subnet id="subnet-041b8fb50d0955b98"
    security group=["sg-0e763aee876288cc9"]
    tags={
        Name = "server"
        Enc = "test"
    }
}
