view: dim_colour_group {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_colour_group`
    ;;

  dimension: colour_group_code {
    type: number
    sql: ${TABLE}.colour_group_code ;;
  }

  dimension: colour_group_name {
    type: string
    sql: ${TABLE}.colour_group_name ;;
  }

  measure: count {
    type: count
    drill_fields: [colour_group_name]
  }
}
