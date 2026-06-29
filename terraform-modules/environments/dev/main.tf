module "bucket" {
  source         = "../../modules/s3"
  bucket_name    = "curso-tfadv-dev-data"
  tags           = module.tags.tags
  force_destroy  = true
}
