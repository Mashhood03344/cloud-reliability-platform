variable "queue_name" {
  description = "Name of the primary SQS queue."
  type        = string

  validation {
    condition     = can(regex("^[A-Za-z0-9_-]{1,80}$", var.queue_name))
    error_message = "Queue name must be 1-80 characters using letters, numbers, hyphens or underscores."
  }
}

variable "max_receive_count" {
  description = "Number of receives before a message is moved to the DLQ."
  type        = number
  default     = 3

  validation {
    condition     = var.max_receive_count >= 1 && var.max_receive_count <= 1000 && floor(var.max_receive_count) == var.max_receive_count
    error_message = "max_receive_count must be a whole number between 1 and 1000."
  }
}

variable "visibility_timeout_seconds" {
  description = "Time a received message remains invisible to other consumers."
  type        = number
  default     = 60
}

variable "tags" {
  description = "Tags applied to messaging resources."
  type        = map(string)
  default     = {}
}