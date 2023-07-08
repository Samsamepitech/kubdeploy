terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  version = "4.51.0"
  project = "taibi-samira"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}
terraform {
  backend "gcs" {
    bucket      = "samsambucket"
    prefix      = "terraform"
    credentials = "taibi-samira-3f2a23e32f1f.json"
  }
}
