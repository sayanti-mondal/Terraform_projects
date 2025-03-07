
#This variable contains the developers' names for project-sonic with the names separated by a :.
#Using this variable and the count meta-argument, create IAM users for all developers.

resource "aws_iam_user" "cloud" {
     name = split(":",var.cloud_users)[count.index]
     count = length(split(":",var.cloud_users))

}


resource "aws_s3_bucket" "sonic_media" {
     bucket = var.bucket

}
resource "aws_s3_object" "upload_sonic_media" {
     bucket = aws_s3_bucket.sonic_media.id
     key =  substr(each.value, 7, 20)
     source = each.value
     for_each = var.media 

}