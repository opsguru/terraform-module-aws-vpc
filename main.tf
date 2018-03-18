#__     __  ____     ____
#\ \   / / |  _ \   / ___|
##\ \ / /  | |_) | | |
###\ V /   |  __/  | |___
####\_/    |_|      \____|

# Create a VPC to launch our instances into

resource "aws_vpc" "vpc" {
 cidr_block           = "${var.cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name        = "${var.vpc-name}"
    Environment = "${var.environment}"
    ManagedBy   = "${var.managedby}"
  }
}

resource "aws_internet_gateway" "vpc" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name        = "${var.vpc-name}"
    Environment = "${var.environment}"
    ManagedBy   = "${var.managedby}"
  }
}
