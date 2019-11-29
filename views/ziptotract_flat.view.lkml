view: ziptotract_flat {
  sql_table_name: PUBLIC.ZIPTOTRACT_FLAT ;;

  dimension: tract {
    type: string
    sql: ${TABLE}."TRACT" ;;
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
