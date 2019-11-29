# include all the views here.
include: "/views/*.view"

connection: "snowflakedb"

datagroup: training_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: training_default_datagroup

explore: demographics {
  view_name: demographics_flat
  group_label: "Demographics"
  label: "Area Economic Data"
  join: ziptotract_flat {
    type: left_outer
    sql_on: ${demographics_flat.tract_id} = ${ziptotract_flat.tract} ;;
    relationship: many_to_many
  }
  join: ziptoall_flat {
    view_label: "ZCTA"
    type: left_outer
    sql_on: ${ziptoall_flat.zip_code} = ${ziptotract_flat.zip} ;;
    required_joins: [ziptotract_flat]
    relationship: one_to_one
  }

  join: ziptolatlong {
    view_label: "ZCTA"
    type: left_outer
    sql_on: ${ziptolatlong.zip} = ${ziptotract_flat.zip} ;;
    required_joins: [ziptotract_flat]
    relationship: one_to_one
  }
  join: hpi_flat {
    view_label: "Combined Stats"
    type: left_outer
    sql_on: ${demographics_flat.tract_id} = ${hpi_flat.tract};;
    relationship: one_to_many
  }
  join: crime_flat {
    view_label: "Combined Stats"
    type: left_outer
    sql_on: ${demographics_flat.tract_id} = ${crime_flat.tract};;
    relationship: one_to_many
  }

  join: jobs_flat {
    view_label: "Combined Stats"
    type: left_outer
    sql_on: ${jobs_flat.zip} = ${ziptoall_flat.zip_code} ;;
    required_joins: [ziptoall_flat]
    relationship: many_to_many
  }

  join: hpi_complete {
    view_label: "Combined Stats"
    type: left_outer
    sql_on: ${ziptoall_flat.zip_code} = ${hpi_complete.zip};;
    required_joins: [ziptoall_flat]
    relationship: one_to_one
  }
}
