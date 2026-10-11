output "schema_registry_clusters_lookup_id" {
  description = "Map of id values across all schema_registry_clusters_lookup, keyed the same as var.schema_registry_clusters_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_schema_registry_clusters.schema_registry_clusters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schema_registry_clusters_lookup_clusters" {
  description = "Map of clusters values across all schema_registry_clusters_lookup, keyed the same as var.schema_registry_clusters_lookup except keys with no clusters are omitted"
  value       = { for k, v in data.confluent_schema_registry_clusters.schema_registry_clusters_lookup : k => v.clusters if v.clusters != null && length(v.clusters) > 0 }
}
output "schema_registry_clusters_lookup_environment" {
  description = "Map of environment values across all schema_registry_clusters_lookup, keyed the same as var.schema_registry_clusters_lookup except keys with no environment are omitted"
  value       = { for k, v in data.confluent_schema_registry_clusters.schema_registry_clusters_lookup : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}

