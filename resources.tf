resource "aws_s3_bucket" "terra_state" {
    bucket = "backend-store-bucket-9831"
}
resource "aws_s3_bucket_versioning" "bucket-version" {
    bucket = aws_s3_bucket.terra_state.id
    versioning_configuration {
        status = "Enabled"
    }
    }
resource "aws_dynamodb_table" "statefile-lock" {
    name = "state-locks"
    hash_key = "LockID"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "LockID"
      type = "S"
    }
}