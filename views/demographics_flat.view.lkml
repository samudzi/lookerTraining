view: demographics_flat {
  sql_table_name: PUBLIC.DEMOGRAPHICS_FLAT ;;

  dimension: female_pop {
    type: number
    sql: ${TABLE}."FEMALE_POP" ;;
  }

  dimension: male_pop {
    type: number
    sql: ${TABLE}."MALE_POP" ;;
  }

  dimension: total_10_14 {
    type: number
    sql: ${TABLE}."TOTAL_10_14" ;;
  }

  dimension: total_15_19 {
    type: number
    sql: ${TABLE}."TOTAL_15_19" ;;
  }

  dimension: total_20_24 {
    type: number
    sql: ${TABLE}."TOTAL_20_24" ;;
  }

  dimension: total_25_29 {
    type: number
    sql: ${TABLE}."TOTAL_25_29" ;;
  }

  dimension: total_30_34 {
    type: number
    sql: ${TABLE}."TOTAL_30_34" ;;
  }

  dimension: total_35_39 {
    type: number
    sql: ${TABLE}."TOTAL_35_39" ;;
  }

  dimension: total_40_44 {
    type: number
    sql: ${TABLE}."TOTAL_40_44" ;;
  }

  dimension: total_44_49 {
    type: number
    sql: ${TABLE}."TOTAL_44_49" ;;
  }

  dimension: total_50_54 {
    type: number
    sql: ${TABLE}."TOTAL_50_54" ;;
  }

  dimension: total_55_59 {
    type: number
    sql: ${TABLE}."TOTAL_55_59" ;;
  }

  dimension: total_5_9 {
    type: number
    sql: ${TABLE}."TOTAL_5_9" ;;
  }

  dimension: total_60_64 {
    type: number
    sql: ${TABLE}."TOTAL_60_64" ;;
  }

  dimension: total_65_69 {
    type: number
    sql: ${TABLE}."TOTAL_65_69" ;;
  }

  dimension: total_70_74 {
    type: number
    sql: ${TABLE}."TOTAL_70_74" ;;
  }

  dimension: total_75_79 {
    type: number
    sql: ${TABLE}."TOTAL_75_79" ;;
  }

  dimension: total_80_84 {
    type: number
    sql: ${TABLE}."TOTAL_80_84" ;;
  }

  dimension: total_85_plus {
    type: number
    sql: ${TABLE}."TOTAL_85_PLUS" ;;
  }

  dimension: total_pop {
    type: number
    sql: ${TABLE}."TOTAL_POP" ;;
  }

  dimension: total_under_5 {
    type: number
    sql: ${TABLE}."TOTAL_UNDER_5" ;;
  }

  dimension: tract_id {
    type: string
    sql: ${TABLE}."TRACT_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
