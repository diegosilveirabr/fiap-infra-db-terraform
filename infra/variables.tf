# Atlas Organization ID
variable "atlas_org_id" {
  type        = string
  description = "Atlas Organization ID"
}
# Atlas Project Name
variable "atlas_project_name" {
  type        = string
  description = "Atlas Project Name"
}

# Atlas Project Environment
variable "environment" {
  type        = string
  description = "The environment to be built"
}

#
# Mongo Atlas shared cluster parameters
#

# Cluster Instance Size Name
variable "cluster_instance_size_name" {
  type        = string
  description = "Cluster instance size name"
}

# Cloud Provider to Host Atlas Cluster
variable "cloud_provider" {
  type        = string
  description = "AWS or GCP or Azure"
}

# Atlas Region
variable "atlas_region" {
  type        = string
  description = "Atlas region where resources will be created"
}

# MongoDB Version
variable "mongodb_version" {
  type        = string
  description = "MongoDB Version"
}

# IP Address Access
variable "ip_address" {
  type = string
  description = "IP address used to access Atlas cluster"
}

# AWS Region
variable "aws_region" {
  type = string
  description = "AWS Region"
}

variable "atlas_cluster_provider_name" {
  description = "Cloud provider for this resource"
  type        = string
  default     = "TENANT"
}

# See https://www.mongodb.com/docs/atlas/reference/amazon-aws/
variable "atlas_cluster_size_name" {
  description = "Type of the MongoDB cluster to deploy"
  type        = string
  default     = "M0"
}

variable "atlas_cluster_allow_inbound_from_cidr" {
  description = "CIDR block to allow inbound traffic to the cluster (change to your IP)"
  type        = string
  default     = "0.0.0.0/0"
}

# user

variable "mongo_database_admin_user" {
  description = "Mongo database admin username"
  type        = string
  default     = "admin"
}

variable "mongo_database_admin_password" {
  description = "Mongo database admin password"
  type        = string
}

variable "mongo_database_app_user" {
  description = "Mongo database app username"
  type        = string
  default     = "admin"
}

variable "mongo_database_app_password" {
  description = "Mongo database app password"
  type        = string
}


# database

variable "mongo_database_name" {
  description = "Mongo database name"
  type        = string
  default     = "db-fiap-fastfood"
}


# vpc

variable "vpc_id" {
  default = "vpc-0c33afcdadaa4be7b"
}

variable "vpc_cidr_block" {
  default = "172.31.0.0/16"
}

variable "subnet_id_a" {
  default = "subnet-092106de434121bca"
}

variable "subnet_id_b" {
  default = "subnet-021d5fd5534bb9fbd"
}

variable "subnet_id_c" {
  default = "subnet-05685364d9e045913"
}

variable "subnet_id_d" {
  default = "subnet-066ce0c3304da4788"
}

variable "subnet_id_e" {
  default = "subnet-0bdae3752039a482f"
}

variable "default_sg_id" {
  default = "sg-0e381eb84dad9dfd3"
}
