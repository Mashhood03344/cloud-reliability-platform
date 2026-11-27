output "orders_queue_url" {
  description = "URL of the order-processing queue."
  value       = module.messaging.queue_url
}

output "orders_queue_arn" {
  description = "ARN of the order-processing queue."
  value       = module.messaging.queue_arn
}

output "orders_dlq_url" {
  description = "URL of the dead-letter queue."
  value       = module.messaging.dlq_url
}