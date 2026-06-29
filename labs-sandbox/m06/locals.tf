locals {
  buckets = {
    data = {
      versioning = true
    }
    logs = {
      versioning = false
    }
  }

  prefix = "mi-proyecto"

  versioned_buckets = {
    for name, cfg in local.buckets : name => cfg
    if lookup(cfg, "versioning", false)
  }

  base_tags = {
    Project   = var.project
    ManagedBy = "terraform"
  }
}