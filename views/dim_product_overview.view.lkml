view: dim_product_overview {
  sql_table_name: `hnm.dim_product_overview`
    ;;

  dimension: prod_name {
    type: string
    sql: ${TABLE}.prod_name ;;
  }

  dimension: product_code {
    type: number
    sql: ${TABLE}.product_code ;;
  }

  measure: count {
    type: count
    drill_fields: [prod_name]
  }
}
