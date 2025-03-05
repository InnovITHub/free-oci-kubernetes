variable "compartment_id" {
  type        = string
  description = "The compartment to create the resources in"
  default     = "ocid1.tenancy.oc1..aaaaaaaaa4beorissd4mjfwzawrp2mxhhbolxlppv4rie7uoifkvnxg5unga"
}
variable "region" {
  type        = string
  description = "The region to provision the resources in"
  default     = "eu-frankfurt-1"
}
variable "ssh_public_key" {
  type        = string
  description = "The SSH public key to use for connecting to the worker nodes"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpVySCnADqtkEUJFbx4qVi/1STyo/7PzpOvAQTXOB2DBvaPO7z9ZFuDRhXhQmHL176LrCFmxKEIkW7XQMpKFEDc9Ryiz8dnTcVDAdCK25K8cNKBBlwdIg58cE9Ka6BaE4NNBEZxU+uC8A1NzQkRTKrKlfhqqdtV2JWxFYFo2hB2RnNQni8uf1hzoiYsUAI+G11yOH9z+qCk5Nh9bAXcwbpC4+f0AfQZH8o0C8SDri9+H1T7uzL1+ZhsUuieggN216uuIbI5dUVbYaYyGXg+88DEPH73cKT0I9UYVrog26bSTVRpUQQH+rBSUoCYsUKA2jeR8kfDz02V1Gs1ECSSqft Keys for Kubernetes OCI Cluster"
}
variable "bastion_allowed_ips" {
  type        = list(string)
  description = "List of IP prefixes allowed to connect via bastion"
  default     = ["0.0.0.0/0"]
}
variable "ad_list" {
  type        = list
  description = "List of length 2 with the names of availability regions to use"
  default     = ["lIXD:EU-FRANKFURT-1-AD-2", "lIXD:EU-FRANKFURT-1-AD-1"]
}
variable "git_token" {
  description = "Git PAT"
  sensitive   = true
  type        = string
}
variable "git_url" {
  description = "Git repository URL"
  default     = "https://github.com/InnovITHub/free-oci-kubernetes"
  type        = string
  nullable    = false
}
