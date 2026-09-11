terraform {
  required_version = "1.16.0"
  required_providers {
    time = {
      source = "hashicorp/time"
      version = "0.14.2"
    }
  }
}

provider "time" {
  # Configuration options
}

resource "time_rotating" "example" {
  rotation_minutes = 2
}
