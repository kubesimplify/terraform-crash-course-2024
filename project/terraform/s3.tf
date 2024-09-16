# create a new bucket
resource "aws_s3_bucket" "tf_s3_bucket" {
  bucket = "nodejs-app-static-files-bkt"

  tags = {
    Name        = "NodeJs Static Files"
    Environment = "Dev"
  }
}

# upload the image directory
resource "aws_s3_object" "tf_s3_object" {
  bucket   = aws_s3_bucket.tf_s3_bucket.bucket
  key      = "images/${each.key}" # each.key is the filename
  source   = "nodejs-mysql/public/images/${each.key}"  # source directory
  for_each = fileset("nodejs-mysql/public/images", "**") # get all files in the images directory
}

# outputs
output "s3_bucket_id" {
  value = aws_s3_bucket.tf_s3_bucket.id
}
