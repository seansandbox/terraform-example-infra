variable "user_data" { default = "userdata.txt" }
variable "key_name" { description = "The EC2 key pair name" }
variable "db_instance_size" { description = "EC2 instance size for DB instance types" }
variable "vpc_id" { description = "VPCs are pre-provisioned outside of Terraform's control. Provide the VPC ID to use." }
variable "cloud_account_name" { description = "AWS Cloud Account name" }
variable "environment_number_range" { description = "Environment range start number" }