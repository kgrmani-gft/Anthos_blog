resource "google_compute_network" "vpc_network" {
  project                 = "anthos-prac-20"
  name                    = "vpc-nw-gke"
  auto_create_subnetworks = false
  mtu                     = 1460

}

resource "google_compute_subnetwork" "subnetwork-1" {
  project       = "anthos-prac-20"
  name          = "test-subnetwork"
  ip_cidr_range = "10.128.0.0/16"
  region        = "europe-west2"
  network       = google_compute_network.vpc_network.id
  /* secondary_ip_range {
    range_name    = "gke-range"
    ip_cidr_range = "10.16.0.0/14"
  } */
}