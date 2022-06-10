variable "cluster_name" {
  type        = string
  description = "Cluster Name"
}

variable "cluster_region" {
  type        = string
  description = "Cluster Region"
}

variable "digitalocean_api_token" {
  type        = string
  description = "DigitalOcean API token"
  sensitive   = true
}
