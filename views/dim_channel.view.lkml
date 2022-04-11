view: dim_channel {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_channel`
    ;;

  dimension: sales_channel_id {
    type: number
    sql: ${TABLE}.sales_channel_id ;;
  }

  dimension: sales_channel_name {
    type: string
    sql: ${TABLE}.sales_channel_name ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_channel_name]
  }
}
