view: dim_product_type {
  sql_table_name: `hnm.dim_product_type`
    ;;

  dimension: product_group_name {
    type: string
    sql: ${TABLE}.product_group_name ;;
  }

  dimension: product_type_name {
    type: string
    sql: ${TABLE}.product_type_name ;;
  }

  dimension: product_type_no {
    type: number
    sql: ${TABLE}.product_type_no ;;
  }

  measure: count {
    type: count
    drill_fields: [product_type_name, product_group_name]
  }
}
