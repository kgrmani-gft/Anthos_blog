resource "google_gke_hub_membership" "membership" {
  project       = "anthos-prac-7"
  membership_id = "my-membership"
  endpoint {
    gke_cluster {
      resource_link = "//container.googleapis.com/${google_container_cluster.primary.id}"
    }
  }
  description = "Membership"
  provider    = google-beta
}