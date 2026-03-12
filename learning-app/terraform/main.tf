resource "google_container_cluster" "primary" {
  name     = "learning-app-cluster"
  location = "us-central1"
  enable_autopilot = true # Highly recommended for small projects
}

# Artifact Registry to store your Docker images
resource "google_artifact_registry_repository" "my_repo" {
  location      = "us-central1"
  repository_id = "sre-app-repo"
  format        = "DOCKER"
}