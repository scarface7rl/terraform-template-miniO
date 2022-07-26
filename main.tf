terraform {
  required_providers {
    minio = {
      # ATTENTION: use the current version here!
      source  = "refaktory/minio"
    }
  }
}

provider "minio" {
  access_key = var.username
  # Specify your minio user secret key here.
  secret_key = var.password
  # If true, the server will be contacted via https://
  ssl = false
}

# Create a bucket.

resource "minio_bucket" "bucket" {
  # count = var.enableMinio ? 1 : 0
  name = var.name
}