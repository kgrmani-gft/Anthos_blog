resource "google_gke_hub_membership" "membership" {
  project       = "anthos-prac-20"
  membership_id = "my-membership"
  endpoint {
    gke_cluster {
      resource_link = "//container.googleapis.com/${google_container_cluster.primary.id}"
    }
  }
  description = "Membership"
  provider    = google-beta
}
/* resource "null_resource" "gke-credentials" {

  provisioner "local-exec" {
    command = "sh sample.sh"

  }

} */