view: dim_index {
  sql_table_name: `hnm.dim_index`
    ;;

  dimension: index_code {
    type: string
    sql: ${TABLE}.index_code ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.index_name ;;
  }

  measure: count {
    type: count
    drill_fields: [index_name]
  }
}
