variable "project_id" {}

variable "services" {
  default = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "containerregistry.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudbilling.googleapis.com",
  ]
  type = list(string)
}

variable "terraform_sa_roles" {
  default = [
    "roles/compute.viewer",
    "roles/container.clusterAdmin",
    "roles/container.developer",
    "roles/iam.serviceAccountAdmin",
    "roles/resourcemanager.projectIamAdmin",
    "roles/compute.networkAdmin",
    "roles/storage.objectViewer",   # for pulling images from GCR
  ]
  type = list(string)
}

variable "cloudbuild_sa_roles" {
  default = [
    "roles/container.developer"
  ]
  type = list(string)
}