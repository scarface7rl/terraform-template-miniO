terraform {
  required_providers {
    minio = {
      # ATTENTION: use the current version here!
      source  = "refaktory/minio"
    }
  }
}

provider "minio" {
  # The Minio server endpoint.
  # NOTE: do NOT add an http:// or https:// prefix!
  # Set the `ssl = true/false` setting instead.
  # Specify your minio user access key here.
  endpoint = "my-minio.domain.com"
  access_key = "admin" 
  # Specify your minio user secret key here.
  secret_key = "admin"
  # If true, the server will be contacted via https://
  ssl = false
}

resource "minio_bucket" "bucket" {
  # count = var.enableMinio ? 1 : 0
  name = var.namespace
}

resource "minio_user" "user" {
  access_key = var.namespace
  secret_key = var.password
}