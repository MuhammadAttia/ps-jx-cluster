
module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.6.0"
  gcp_project="plural-sight-jenkinsx"
  cluster_name="ps-jx-cluster"
  # insert the 1 required variable here
}

terraform {
    backend "gcs" {
        bucket = "ps-jx-terraform-state-file"
        prefix= "terraform/state"
    }
}