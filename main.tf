terraform {
  required_providers {
    minio = {
      # ATTENTION: use the current version here!
      source  = "refaktory/minio"
    }
  }
}

# Create a bucket.
resource "minio_bucket" "bucket" {
  name = "bucket"
}

resource "minio_group" "group2" {
  name = "group2"
}

# Create a user with specified access credentials, policies and group membership.
resource "minio_user" "user1" {
  access_key = "00000001"
  secret_key = "00000001"

}