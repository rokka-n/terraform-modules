variable "users" {}
variable "groups" {}
variable "membership_name" {}

resource "aws_iam_group_membership" "membership" {
  name  = "${var.membership_name}"
  group = "${var.groups.name}"
  #users = ["${var.users}"]
  users = ["${split(",", var.users)}"]
}
