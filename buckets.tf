resource "aws_s3_bucket" "bucket_demo" {
  bucket = "demo-jenkins-eval-bucket"

  #tags = var.tags
}
