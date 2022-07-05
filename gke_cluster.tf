resource "google_container_cluster" "primary" {
  name                     = "my-gke-cluster"
  project                  = "anthos-prac-7"
  location                 = "us-central1"
  remove_default_node_pool = true
  initial_node_count       = 1
}
