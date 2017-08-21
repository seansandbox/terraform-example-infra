terraform {
  backend "atlas" {
    name    = "umgdevops/seansandbox"
    address = "https://atlas.hashicorp.com"
  }
}

module "server" {
    source = "github.com/seansandbox/terraform-example-modules//server"
    number_of_instances = 1
    cloud_account_name = "${var.cloud_account_name}"
    ec2_instance_guest_os_type = "WV"
    hosted_application = "DBS"
    environment_number_range = "${var.environment_number_range}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.db_instance_size}"
    user_data = "${var.user_data}"
    key_name = "${var.key_name}"
    vpc_id = "${var.vpc_id}"
    chef_server_url = "${var.chef_server_url}"
    chef_environment = "${var.chef_environment}"
    chef_user_name = "${var.chef_user_name}"
    chef_user_key = "${var.chef_user_key}"
}

module "password" {
  source = "github.com/seansandbox/terraform-example-modules//password"
  length = "20"
}

output "password" { value = "${module.password.password}" }