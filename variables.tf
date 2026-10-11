variable "cluster_placement_groups_cluster_placement_groups" {
  description = <<EOT
Map of cluster_placement_groups_cluster_placement_groups, attributes below
Required:
    - availability_domain
    - cluster_placement_group_type
    - compartment_id
    - description
    - name
Optional:
    - defined_tags
    - freeform_tags
    - opc_dry_run
    - state
    - capabilities (block):
        - items (required, block):
            - additional_details (optional, block):
                - cluster_placement_group_count (optional)
                - memory_in_gbs (optional)
                - nvmes (optional)
                - ocpus (optional)
                - service_type (required)
            - name (required)
            - service (required)
    - placement_instruction (block):
        - type (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain          = string
    cluster_placement_group_type = string
    compartment_id               = string
    description                  = string
    name                         = string
    defined_tags                 = optional(map(string))
    freeform_tags                = optional(map(string))
    opc_dry_run                  = optional(bool)
    state                        = optional(string)
    capabilities = optional(object({
      items = list(object({
        additional_details = optional(object({
          cluster_placement_group_count = optional(number)
          memory_in_gbs                 = optional(number)
          nvmes                         = optional(number)
          ocpus                         = optional(number)
          service_type                  = string
        }))
        name    = string
        service = string
      }))
    }))
    placement_instruction = optional(object({
      type  = string
      value = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cluster_placement_groups_cluster_placement_groups : (
        v.capabilities == null || (length(v.capabilities.items) >= 1)
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cluster_placement_groups_cluster_placement_groups : (
        v.capabilities == null || (alltrue([for item in v.capabilities.items : (item.additional_details == null || (contains([for v in ["COMPUTE"] : lower(v)], lower(item.additional_details.service_type))))]))
      )
    ])
    error_message = "must be one of: \"COMPUTE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.cluster_placement_groups_cluster_placement_groups : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
}

