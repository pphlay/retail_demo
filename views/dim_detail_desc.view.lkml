view: dim_detail_desc {
  sql_table_name: `hnm.dim_detail_desc`
    ;;

  dimension: department_no {
    type: number
    sql: ${TABLE}.department_no ;;
  }

  dimension: detail_desc {
    type: string
    sql: ${TABLE}.detail_desc ;;
  }

  dimension: index_code {
    type: string
    sql: ${TABLE}.index_code ;;
  }

  dimension: index_group_no {
    type: number
    sql: ${TABLE}.index_group_no ;;
  }

  dimension: product_type_no {
    type: number
    sql: ${TABLE}.product_type_no ;;
  }

  dimension: section_no {
    type: number
    sql: ${TABLE}.section_no ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
