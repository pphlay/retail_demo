view: dim_perceived_colour {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_perceived_colour`
    ;;

  dimension: perceived_colour_value_id {
    type: number
    sql: ${TABLE}.perceived_colour_value_id ;;
  }

  dimension: perceived_colour_value_name {
    type: string
    sql: ${TABLE}.perceived_colour_value_name ;;
  }

  measure: count {
    type: count
    drill_fields: [perceived_colour_value_name]
  }
}
