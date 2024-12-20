variable "account_id" {
  type        = string
  description = "The AWS account ID"
}

variable "oidc_host_path" {
  type = string
}

variable "region" {
  type        = string
  description = "The AWS region to deploy to"
}

variable "eks_cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "enable_cloudwatch_agent" {
  type        = bool
  description = "Boolean to enable cloudwatch agent"
  default     = false
}

variable "enable_fluentbit" {
  type        = bool
  description = "Boolean to enable fluentbit"
  default     = false
}

variable "log_retention_in_days" {
  description = "Number of days to retain log events"
  type        = number
  default     = 14
}

variable "log_preserve_legacy_log_group" {
  description = "When true, preserves the legacy log group. Mainly useful to transition to the new log group format"
  type        = bool
  default     = true
}

variable "fluentbit_chart_version" {
  type        = string
  description = "AWS FluentBit Chart Version"
  default     = "0.1.34"
}

variable "service_monitor_enabled" {
  type        = bool
  description = "Boolean to enable service monitor"
  default     = false
}