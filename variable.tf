variable "cidr" {
  description = "VPC cidr block. Example: 10.0.0.0/16"
}

variable "vpc-name" {
  description = "The name of the vpc"
}

variable "environment" {
  description = "The name of the environment"
}

variable "managedby" {
  description = "The name of the team/person who manage this infrastructure"
}
