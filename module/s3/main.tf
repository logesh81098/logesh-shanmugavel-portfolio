##########################################################################################################################################################################
#                                                                 Static S3 Bucket
##########################################################################################################################################################################

resource "aws_s3_bucket" "logesh-portfolio" {
  bucket = "logesh-shanmugavel-portfolio"
  tags = {
    Name = "Logesh Portfolio"
    Project = "Portfolio Bucket"
  }
}

#Upload files to S3 bucket

resource "aws_s3_object" "upload-index-file" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  source = "module/s3/index.html"
  key = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "upload-resume" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  source = "module/s3/Logesh Resume.pdf"
  key = "Logesh Resume.pdf"
}

resource "aws_s3_object" "upload-image" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  source = "module/s3/Logesh.jpeg"
  key = "Logesh.jpeg"
}


#Updating S3 bucket permission from Private facing to Public facing 

resource "aws_s3_bucket_public_access_block" "private-to-public" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  block_public_acls = false
  block_public_policy = false 
  ignore_public_acls = false
  restrict_public_buckets = false
}


#Attaching bucket policy to make object of S3 bucket to be accessed publicly

resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Effect": "Allow",
        "Action": [
            "s3:GetObject"
        ],
        "Principal": "*",
        "Resource": "arn:aws:s3:::logesh-shanmugavel-portfolio/*"
    }
    ]
}  
EOF
}


#Enable static S3 bucket 

resource "aws_s3_bucket_website_configuration" "static-s3-bucket" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  index_document {
    suffix = "index.html"
  }
}