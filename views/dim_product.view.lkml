view: dim_product {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_product`
    ;;

  dimension: product_code {
    type: number
    sql: ${TABLE}.product_code ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
