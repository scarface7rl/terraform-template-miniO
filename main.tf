terraform {
  required_providers {
    minio = {
      # ATTENTION: use the current version here!
      source  = "refaktory/minio"
    }
  }
}

provider "minio" {
  endpoint = "my-minio.domain.com"
  access_key = "admin" 
  secret_key = "admin"
  ssl = true
}