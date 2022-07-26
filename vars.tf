variable "name" {
  type    = string
  default = "bucket-test"
}

variable "usernames" {
  default = "user1"
}

variable "password" {
  type      = string
  default   = "password"
  sensitive = true
}

variable "minio_server" {
  type      = string
  default   = "localhost:9000"
}


variable "namespace" {
  type      = string
  default   = "bucket-test"
}

//variable "minio_endpoint" {
//  type    = string
//  default = ""
//}

