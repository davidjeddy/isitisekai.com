provider aws {
  profile                 = "isitisekai"
  region                  = var.region
  shared_credentials_file = "$HOME/.aws/credentials"
}

terraform {
  cloud {
    organization = "davidjeddy"

    workspaces {
      name = "isitisekaicom"
    }
  }

  required_version = ">= 1.1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
