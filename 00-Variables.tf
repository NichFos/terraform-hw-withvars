# Create 3 VPCs
# VPC-A-Ireland-Prod 10.80.0.0/16
# VPC-B-Ireland-Dev 10.81.0.0/16
# VPC-C-Ireland-Test 10.82.0.0/16

variable "vpcs" {
    type = map(map(string))
    default = {
        VPC-A-Ireland-Prod = {
            cidr = "10.80.0.0/16"
            service = "Production"
        }
        VPC-B-Ireland-Dev = {
            cidr = "10.81.0.0/16"
            service = "Development"
        }
        VPC-C-Ireland-Test = {
            cidr = "10.82.0.0/16"
            service = "Testing"
        }
    }
}


variable "subnets" {
    type = map(map(string))
    default = {
        VPC-A-Ireland-Prod-pub = {
            cidr = "10.80.1.0/24"
            vpc = "VPC-A-Ireland-Prod"
            az = "eu-west-1a"
            service = "production"
        }
        VPC-A-Ireland-Prod-priv = {
            cidr = "10.80.11.0/24"
            vpc = "VPC-A-Ireland-Prod"
            az = "eu-west-1a"
            service = "prod"
        }
        VPC-B-Ireland-Dev-priv = {
            cidr = "10.81.12.0/24"
            vpc = "VPC-B-Ireland-Dev"
            az = "eu-west-1b"
            service = "development"
        }
        VPC-C-Ireland-Test-priv = {
            cidr = "10.82.13.0/24"
            vpc = "VPC-C-Ireland-Test"
            az = "eu-west-1c"
            service = "testing"
        }
    }
}

variable "prod-igw" {
    type = string
    default = "VPC-A-Ireland-Prod"
}