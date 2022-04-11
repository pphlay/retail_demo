view: dim_index_group {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_index_group`
    ;;

  dimension: index_group_name {
    type: string
    sql: ${TABLE}.index_group_name ;;
  }

  dimension: index_group_no {
    type: number
    sql: ${TABLE}.index_group_no ;;
  }

  measure: count {
    type: count
    drill_fields: [index_group_name]
  }
}
