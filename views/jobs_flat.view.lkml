view: jobs_flat {
  sql_table_name: PUBLIC.JOBS_FLAT ;;

  dimension: new_jobs {
    type: number
    sql: ${TABLE}."NEW_JOBS" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
