resource "google_service_account" "default" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}
 
# GKE clusters

#testcluster
resource "google_container_cluster" "primary" {
  name     = "testcluster"
  location = var.region
 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
 
# Enabling Autopilot for this cluster
  enable_autopilot = true
}

#stagingcluster
resource "google_container_cluster" "secondary" {
  name     = "stagingcluster"
  location = var.region
 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
 
# Enabling Autopilot for this cluster
  enable_autopilot = true
}

#prodcluster
resource "google_container_cluster" "third" {
  name     = "prodcluster"
  location = var.region
 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
 
# Enabling Autopilot for this cluster
  enable_autopilot = true
}