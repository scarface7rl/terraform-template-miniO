terraform {
  required_providers {
    minio = {
      # ATTENTION: use the current version here!
      source  = "refaktory/minio"
    }
  }
}

resource "minio_bucket" "bucket" {
  # count = var.enableMinio ? 1 : 0
  name = var.name
}

resource "minio_user" "user" {
  access_key = var.username
  secret_key = var.password
  policies = [
    minio_canned_policy.policy.name
    # Note: using a data source here!
    #data.minio_canned_policy.console_admin.name,
  ]
  /*groups = [
    minio_group.group2.name,
  ]*/
  depends_on = [
    minio_canned_policy.policy,
  ]
}

