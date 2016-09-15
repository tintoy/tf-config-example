provider "ddcloud" {
	region = "AU"
	username = "${var.username}"
	password = "${var.password}"
}

variable "username" { }
variable "password" { }

resource "ddcloud_networkdomain" "jenkins_domain" {
	name		           = "jenkins-domain"
	description	           = "Jenkins Terraform test domain (do not delete)."
	datacenter	           = "AU10"
}
