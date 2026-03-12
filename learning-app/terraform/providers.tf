terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "learning-app-prod" # Replace with your GCP project ID
  region  = "us-central1"
}