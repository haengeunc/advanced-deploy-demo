# project_name: "haengeun_demo"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }


constant: project_name {
  value:  "haengeun_demo_hub"
  export: override_required
}

constant: project_connection {
  value: "thelook_ecommerce_hc"
  export: override_required
}