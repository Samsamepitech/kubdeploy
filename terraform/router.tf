# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "router2" {
  name    = "router2"
  region  = "europe-west1"
  network = google_compute_network.main2.id
}
