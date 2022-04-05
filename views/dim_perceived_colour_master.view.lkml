view: dim_perceived_colour_master {
  sql_table_name: `hnm.dim_perceived_colour_master`
    ;;

  dimension: perceived_colour_master_id {
    type: number
    sql: ${TABLE}.perceived_colour_master_id ;;
  }

  dimension: perceived_colour_master_name {
    type: string
    sql: ${TABLE}.perceived_colour_master_name ;;
  }

  measure: count {
    type: count
    drill_fields: [perceived_colour_master_name]
  }
}
