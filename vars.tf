variable "name" {
  type    = string
  default = "bucket-test"
}

variable "username" {
  type    = string
  default = "admin"
}

variable "password" {
  type      = string
  default   = "password"
  sensitive = true
}

//variable "minio_endpoint" {
//  type    = string
//  default = ""
//}

