data "confluent_schema_registry_clusters" "schema_registry_clusters_lookup" {
  for_each = var.schema_registry_clusters_lookup


  dynamic "environment" {
    for_each = each.value.environment != null ? [each.value.environment] : []
    content {
      id = environment.value.id
    }
  }
}

