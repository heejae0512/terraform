# Variable declarations
variable "aws_region" {
  description       = "AWS region"
  type              = string
  default           = "us-east-2"
}


variable "vpc_cidr_block" {
    description     = "CIDR block for VPC"
    type            = string
    default         = "10.0.0.0/16"
}

variable "instance_count" {
    default         = 2
    type            = number
    description     = "EC2 instance count"
}


variable "enable_vpc_gateway" {
    default         = false
    type            = bool
    description     = "Enable VPN Gateway"
}

# variable "public_subnets" {
#     default         = ["10.0.1.0/24", "10.0.2.0/24"]
#     type            = list
#     description     = "Public Subnets"
# }

variable "public_subnet_cidr_blocks" {
    default = [
        "10.0.1.0/24",
        "10.0.2.0/24",
        "10.0.3.0/24",
        "10.0.4.0/24",
        "10.0.5.0/24",
        "10.0.6.0/24",
        "10.0.7.0/24",
        "10.0.8.0/24"
    ]

    type = list(string)
    description  = "Public Subnet CIDR Blocks"
}

variable "public_subnet_count" {
    default         = 2
    type            = number
    description     = "Public Subnet Count"
}

variable "private_subnet_cidr_blocks" {
    default = [
        "10.0.101.0/24",
        "10.0.102.0/24",
        "10.0.103.0/24",
        "10.0.104.0/24",
        "10.0.105.0/24",
        "10.0.106.0/24",
        "10.0.107.0/24",
        "10.0.108.0/24"
    ]
}

variable "private_subnet_count" {
  description       = "Number of private subnets."
  type              = number
  default           = 2
}

variable "resource_tags" {
  description       = "Tags to set for all resources"
  type              = map(string)
  default     = {
    project     = "project-alpha",
    environment = "dev"
  }
}

variable "ec2_instance_type" {
    # default       = "t2.micro"
    description     = "EC2 Instance Type? (ex : t2.micro)"
    type            = string 
}