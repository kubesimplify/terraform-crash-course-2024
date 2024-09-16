terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

locals {
  environment = "prod" # dev, staging, prod
  upper_case  = upper(local.environment)
  base_path   = "${path.module}/configs/${local.upper_case}"
}

resource "local_file" "example_1" {
  content  = "demo content"
  filename = "${path.module}/${var.filename_1}.txt"
}

# outputs
output "filename_1" {
  value = local_file.example_1.filename
}