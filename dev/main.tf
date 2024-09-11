terraform {
  required_version = "1.6.0"
  required_providers {
    time = {
      source = "hashicorp/time"
      version = "0.12.1"
    }
  }
}

provider "time" {
  # Configuration options
}

resource "time_rotating" "example" {
  rotation_minutes = 2
}
