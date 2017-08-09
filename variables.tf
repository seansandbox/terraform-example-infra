variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "eu-west-2"
}

variable "vpc_id" {
	default = "vpc-92d506fb"
}

variable "number_of_instances" {
	default = 1
}

variable "user_data" {
	default = "userdata.txt"
}

variable "key_name" {
	default = "sean-london-work-keypair"
}