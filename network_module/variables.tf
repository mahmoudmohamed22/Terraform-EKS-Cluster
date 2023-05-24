variable "VPC_CIDR" {
  type = string 
  default ="10.0.0.0/16" # optional must exist default value in module
}
variable "COMPANY_NAME" {
  type = string
}

variable "PUBLIC_SUBNET_1_CIDR" {
  type = string
}

variable "PUBLIC_SUBNET_2_CIDR" {
  type = string
}

variable "PUBLIC_SUBNET_3_CIDR" {
  type = string
}
variable "PRIVATE_SUBNET_1_CIDR" {
  type = string
}
variable "PRIVATE_SUBNET_2_CIDR" {
  type = string
}

variable "PRIVATE_SUBNET_3_CIDR" {
  type = string
}

variable "AZ_1" {
  type = string
}

variable "AZ_2" {
  type = string
}

variable "AZ_3" {
  type = string
}

variable "REGION" {
  type = string
}


variable "ALL_ROUTE_IP4" {
  type = string
}
variable "ALL_ROUTE_IP6" {
  type = string
}

variable "SSH_PORT" {
  type = number
}

variable "PORT" {
  type = number
}



