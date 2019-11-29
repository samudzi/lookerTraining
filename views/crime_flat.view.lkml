view: crime_flat {
  sql_table_name: PUBLIC.CRIME_FLAT ;;

  dimension: num_incidents {
    type: number
    sql: ${TABLE}."NUM_INCIDENTS" ;;
  }

  dimension: num_killed {
    type: number
    sql: ${TABLE}."NUM_KILLED" ;;
  }

  dimension: tract {
    type: string
    sql: ${TABLE}."TRACT" ;;
  }

  dimension: tract_sq_mileage {
    type: number
    sql: ${TABLE}."TRACT_SQ_MILEAGE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
