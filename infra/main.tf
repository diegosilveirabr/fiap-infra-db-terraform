# Create a Project
resource "mongodbatlas_project" "atlas_project" {
  org_id = var.atlas_org_id
  name   = var.atlas_project_name
}

# The access list grants access from IPs or CIDRs to clusters within the project.
resource "mongodbatlas_project_ip_access_list" "ip" {
  project_id = mongodbatlas_project.atlas_project.id
  cidr_block = var.atlas_cluster_allow_inbound_from_cidr
  comment    = "Terraform managed CIDR block to allow ingress to the cluster"
}

resource "mongodbatlas_cluster" "atlas_cluster" {
  project_id = mongodbatlas_project.atlas_project.id
  name       = var.mongo_database_name

  mongo_db_major_version      = var.mongodb_version
  # Provider settings block
  provider_name               = var.atlas_cluster_provider_name
  backing_provider_name       = var.cloud_provider
  provider_region_name        = var.atlas_region
  provider_instance_size_name = var.atlas_cluster_size_name

  termination_protection_enabled = false

  lifecycle {
    prevent_destroy = true
  }
}

# Outputs to Display
output "cluster_srv_address" {
  value       = mongodbatlas_cluster.atlas_cluster.srv_address
  description = "Cluster srv address created"
}

output "mongo_database_version" {
  value       = mongodbatlas_cluster.atlas_cluster.mongo_db_version
  description = "Database version"
}

locals {
  mongodb_server_without_uri = replace(mongodbatlas_cluster.atlas_cluster.srv_address, "mongodb+srv://", "")
}