resource "aws_s3_bucket" "onebucket" {
     bucket = "mbr1210"

   acl = "private"

   versioning {

      enabled = true

   }

   tags = {

     Name = "Bucket1"

     Environment = "Test"

   }

}


terraform {

  backend "s3" {

    bucket = "mbr1210"

    key    = "terraform.tfstate"

    region = "ap-south-1"

  }

}