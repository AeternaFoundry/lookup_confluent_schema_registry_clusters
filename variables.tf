variable "schema_registry_clusters_lookup" {
  description = <<EOT
Map of schema_registry_clusters_lookup, attributes below
Optional:
    - environment (block):
        - id (required)
EOT

  type = map(object({
    environment = optional(object({
      id = string
    }))
  }))
}

