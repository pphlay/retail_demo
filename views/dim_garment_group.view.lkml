view: dim_garment_group {
  sql_table_name: `hnm.dim_garment_group`
    ;;

  dimension: garment_group_name {
    type: string
    sql: ${TABLE}.garment_group_name ;;
  }

  dimension: garment_group_no {
    type: number
    sql: ${TABLE}.garment_group_no ;;
  }

  measure: count {
    type: count
    drill_fields: [garment_group_name]
  }
}
