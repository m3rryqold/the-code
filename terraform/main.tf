provider "google" {
  project     = "ivory-lotus-415109"
  region      = "us-central1"
}

resource "google_container_cluster" "default" {
  name     = "seb-autopilot"
  location = "us-central1"

  enable_autopilot = true

  deletion_protection = false
}