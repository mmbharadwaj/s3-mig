resource "aws_s3_bucket" "onebucket" {

   bucket = "delete-100"

   acl = "private"

   versioning {

      enabled = true

   }

   tags = {

     Name = "Bucket1"

     Environment = "Test"

   }

}

#terraform {

 # backend "s3" {

  #  bucket = "delete-100"

   # key    = "terraform.tfstate"

   # region = "us-east-2"

  #}

#}
terraform {

    cloud {

        organization = "bharad1210"

        workspaces {

            name = "s3-mig"

        }

    }

}
