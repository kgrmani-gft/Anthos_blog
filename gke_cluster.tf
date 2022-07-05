resource "google_container_cluster" "primary" {
  name       = "my-gke-cluster"
  project    = "anthos-prac-20"
  location   = "europe-west2"
  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnetwork-1.name
  node_pool {
    initial_node_count = 1

  }

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = "10.16.0.0/28"

  }
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "203.0.113.0/29"

      display_name = "set1"
    }

  }
  ip_allocation_policy {

  }

}
