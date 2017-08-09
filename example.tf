terraform {
  backend "atlas" {
    name    = "umgdevops/seansandbox"
    address = "https://atlas.hashicorp.com"
  }
}

module "server" {
    source = "github.com/seansandbox/terraform-example-modules//server"
    number_of_instances = 1
    cloud_account_name = "AWS14"
    ec2_instance_guest_os_type = "WV"
    hosted_application = "DBS"
    environment_number_range = 800
    subnet_id = "subnet-a932f6d2"
    instance_type = "t2.nano"
    user_data = "${var.user_data}"
    key_name = "${var.key_name}"
    vpc_id = "${var.vpc_id}"
}

module "password" {
  source = "github.com/seansandbox/terraform-example-modules//password"
  length = "20"
}

output "password" { value = "${module.password.password}" }