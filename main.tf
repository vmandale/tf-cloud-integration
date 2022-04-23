terraform {
  cloud {
    organization = "vmandale"
    workspaces {
      name = "Example-Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}


provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "app_server2" {
  ami           = "ami-02b92c281a4d3dc79"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleAppServerInstance2"
  }
}
