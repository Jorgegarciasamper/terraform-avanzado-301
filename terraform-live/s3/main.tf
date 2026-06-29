variable "bucket_name" { type = string }

variable "tags" {
  type    = map(string)
  default = {}
}

variable "versioning" {
  type    = bool
  default = true
}

variable "force_destroy" {
  type    = bool
  default = false
}
resource "aws_s3_bucket" "this" {
  bucket        = var.bucket_name
  tags          = var.tags
  force_destroy = var.force_destroy
}