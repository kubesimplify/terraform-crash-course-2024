terraform {
  backend "local" {
    path = "/Users/kunalverma/Desktop/terraform-course/02_state/state-file/terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}
