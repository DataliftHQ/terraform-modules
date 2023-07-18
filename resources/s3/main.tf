module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket        = var.bucket
  bucket_prefix = var.bucket_prefix

  grant         = var.grant
  owner         = var.owner
  acl           = var.acl
  request_payer = var.request_payer

  force_destroy       = var.force_destroy
  acceleration_status = var.acceleration_status

  tags = var.tags

  object_lock_enabled       = var.object_lock_enabled
  object_lock_configuration = var.object_lock_configuration

  # Bucket policies
  policy                                   = var.policy
  attach_policy                            = var.attach_policy
  attach_deny_insecure_transport_policy    = var.attach_deny_insecure_transport_policy
  attach_require_latest_tls_policy         = var.attach_require_latest_tls_policy
  attach_deny_incorrect_encryption_headers = var.attach_deny_incorrect_encryption_headers
  attach_deny_incorrect_kms_key_sse        = var.attach_deny_incorrect_kms_key_sse
  allowed_kms_key_arn                      = var.allowed_kms_key_arn
  attach_deny_unencrypted_object_uploads   = var.attach_deny_unencrypted_object_uploads

  # bucket-level Public Access Block configuration (by default now AWS has made this default as true for S3 bucket-level block public access)
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets

  # Bucket Ownership Controls
  control_object_ownership = var.control_object_ownership
  object_ownership         = var.object_ownership

  # Log delivery policies
  attach_elb_log_delivery_policy             = var.attach_elb_log_delivery_policy
  attach_lb_log_delivery_policy              = var.attach_lb_log_delivery_policy
  attach_access_log_delivery_policy          = var.attach_access_log_delivery_policy
  access_log_delivery_policy_source_accounts = var.access_log_delivery_policy_source_accounts
  access_log_delivery_policy_source_buckets  = var.access_log_delivery_policy_source_buckets

  expected_bucket_owner = var.expected_bucket_owner

  logging    = var.logging
  versioning = var.versioning
  website    = var.website

  server_side_encryption_configuration = var.server_side_encryption_configuration

  # Rules
  cors_rule      = var.cors_rule
  lifecycle_rule = var.lifecycle_rule

  intelligent_tiering  = var.intelligent_tiering
  metric_configuration = var.metric_configuration

  # Analytics bucket policy settings
  attach_analytics_destination_policy = var.attach_analytics_destination_policy
  analytics_source_bucket_arn         = var.analytics_source_bucket_arn
  analytics_source_account_id         = var.analytics_source_account_id
  analytics_self_source_destination   = var.analytics_self_source_destination
  analytics_configuration             = var.analytics_configuration

  # Inventory bucket policy settings
  attach_inventory_destination_policy = var.attach_inventory_destination_policy
  inventory_source_bucket_arn         = var.inventory_source_bucket_arn
  inventory_source_account_id         = var.inventory_source_account_id
  inventory_self_source_destination   = var.inventory_self_source_destination
  inventory_configuration             = var.inventory_configuration

  # Replication settings
  replication_configuration = var.replication_configuration
}
