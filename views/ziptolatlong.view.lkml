view: ziptolatlong {
  sql_table_name: PUBLIC.ZIPTOLATLONG ;;

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: geopoint {
    type: number
    sql: ${TABLE}."GEOPOINT" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}."LNG" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: timezone {
    type: number
    sql: ${TABLE}."TIMEZONE" ;;
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
