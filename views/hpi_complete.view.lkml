view: hpi_complete {
  sql_table_name: PUBLIC.HPI_COMPLETE ;;

  dimension: annualchange {
    type: number
    sql: ${TABLE}."ANNUALCHANGE" ;;
  }

  dimension: yr2014 {
    type: number
    sql: ${TABLE}."YR2014" ;;
  }

  dimension: yr2015 {
    type: number
    sql: ${TABLE}."YR2015" ;;
  }

  dimension: yr2016 {
    type: number
    sql: ${TABLE}."YR2016" ;;
  }

  dimension: yr2017 {
    type: number
    sql: ${TABLE}."YR2017" ;;
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
