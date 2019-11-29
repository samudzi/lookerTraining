view: ziptoall_flat {
  sql_table_name: PUBLIC.ZIPTOALL_FLAT ;;

  dimension: class {
    type: string
    sql: ${TABLE}."CLASS" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."ZIP_CODE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
