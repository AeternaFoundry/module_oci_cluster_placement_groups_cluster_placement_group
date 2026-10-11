resource "oci_cluster_placement_groups_cluster_placement_group" "cluster_placement_groups_cluster_placement_groups" {
  for_each = var.cluster_placement_groups_cluster_placement_groups

  availability_domain          = each.value.availability_domain
  cluster_placement_group_type = each.value.cluster_placement_group_type
  compartment_id               = each.value.compartment_id
  description                  = each.value.description
  name                         = each.value.name
  defined_tags                 = each.value.defined_tags
  freeform_tags                = each.value.freeform_tags
  opc_dry_run                  = each.value.opc_dry_run
  state                        = each.value.state

  dynamic "capabilities" {
    for_each = each.value.capabilities != null ? [each.value.capabilities] : []
    content {
      dynamic "items" {
        for_each = capabilities.value.items
        content {
          dynamic "additional_details" {
            for_each = items.value.additional_details != null ? [items.value.additional_details] : []
            content {
              cluster_placement_group_count = additional_details.value.cluster_placement_group_count
              memory_in_gbs                 = additional_details.value.memory_in_gbs
              nvmes                         = additional_details.value.nvmes
              ocpus                         = additional_details.value.ocpus
              service_type                  = additional_details.value.service_type
            }
          }
          name    = items.value.name
          service = items.value.service
        }
      }
    }
  }

  dynamic "placement_instruction" {
    for_each = each.value.placement_instruction != null ? [each.value.placement_instruction] : []
    content {
      type  = placement_instruction.value.type
      value = placement_instruction.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

