variable "recovery_window_in_days" {
  description = "Specifies the number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days."
  type        = number
  default     = 30
}

# Secrets
variable "rotate_secrets" {
  description = "List of secrets to keep and rotate in AWS Secrets Manager"
  type        = any
  default     = []
}

# Secrets
variable "secrets" {
  description = "List of secrets to keep in AWS Secrets Manager"
  type        = any
  default     = []
}

variable "unmanaged" {
  description = "terraform must ignore secrets lifecycle"
  default     = false
}

variable "automatically_after_days" {
  description = "Specifies the number of days between automatic scheduled rotations of the secret."
  type        = number
  default     = 30
}

# Tags
variable "tags" {
  description = "Specifies a key-value map of user-defined tags that are attached to the secret."
  type        = any
  default     = {}
}
