variable "gke_username" {
  default     = ""
  description = "gke username"
}
 
variable "gke_password" {
  default     = ""
  description = "gke password"
}
 
# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.project_id}-gke"
  location = var.region
 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
 
# Enabling Autopilot for this cluster
  enable_autopilot = true
}