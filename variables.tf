variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "resource_group" {
  type = string
}


variable "server_name" {
  default = "web-server"
}

variable "locations" {
  type = map(any)
  default = {
    location1 = "westus2"
    location2 = "East US"
  }
}

variable "subnets" {
  type    = list(any)
  default = ["10.0.1.10", "10.0.1.11"]
}

variable "live" {
  type    = string
  default = false
}
