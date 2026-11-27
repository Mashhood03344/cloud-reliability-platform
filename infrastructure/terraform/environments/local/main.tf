module "messaging" {
  source = "../../modules/messaging"

  queue_name                 = "cloud-reliability-orders"
  max_receive_count          = 3
  visibility_timeout_seconds = 60

  tags = {
    Component   = "messaging"
    Environment = var.environment
  }
}