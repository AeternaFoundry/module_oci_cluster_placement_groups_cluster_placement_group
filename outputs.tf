output "cluster_placement_groups_cluster_placement_groups_id" {
  description = "Map of id values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no id are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_availability_domain" {
  description = "Map of availability_domain values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no availability_domain are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_capabilities" {
  description = "Map of capabilities values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no capabilities are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => one(v.capabilities) if v.capabilities != null && length(v.capabilities) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_cluster_placement_group_type" {
  description = "Map of cluster_placement_group_type values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no cluster_placement_group_type are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.cluster_placement_group_type if v.cluster_placement_group_type != null && length(v.cluster_placement_group_type) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_compartment_id" {
  description = "Map of compartment_id values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_defined_tags" {
  description = "Map of defined_tags values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_description" {
  description = "Map of description values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no description are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_freeform_tags" {
  description = "Map of freeform_tags values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_lifecycle_details" {
  description = "Map of lifecycle_details values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_name" {
  description = "Map of name values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no name are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_opc_dry_run" {
  description = "Map of opc_dry_run values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no opc_dry_run are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.opc_dry_run if v.opc_dry_run != null }
}
output "cluster_placement_groups_cluster_placement_groups_placement_instruction" {
  description = "Map of placement_instruction values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no placement_instruction are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => one(v.placement_instruction) if v.placement_instruction != null && length(v.placement_instruction) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_state" {
  description = "Map of state values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no state are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_system_tags" {
  description = "Map of system_tags values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no system_tags are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_time_created" {
  description = "Map of time_created values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no time_created are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cluster_placement_groups_cluster_placement_groups_time_updated" {
  description = "Map of time_updated values across all cluster_placement_groups_cluster_placement_groups, keyed the same as var.cluster_placement_groups_cluster_placement_groups except keys with no time_updated are omitted"
  value       = { for k, v in oci_cluster_placement_groups_cluster_placement_group.cluster_placement_groups_cluster_placement_groups : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

