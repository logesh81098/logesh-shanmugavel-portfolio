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
  source = "module/s3/Logesh Updated Resume.pdf"
  key = "Logesh Updated Resume.pdf"
}

resource "aws_s3_object" "upload-image" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  source = "module/s3/Logesh.jpeg"
  key = "Logesh.jpeg"
}