resource "aws_s3_bucket" "this" {
  for_each = local.buckets

  bucket = "${local.prefix}-${each.key}"

  force_destroy = false

  tags = merge(local.base_tags, {
    Role       = each.key
    Versioning = lookup(each.value, "versioning", false) ? "on" : "off"
  })
}