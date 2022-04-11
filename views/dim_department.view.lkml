view: dim_department {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_department`
    ;;

  dimension: department_name {
    type: string
    sql: ${TABLE}.department_name ;;
  }

  dimension: department_no {
    type: number
    sql: ${TABLE}.department_no ;;
  }

  measure: count {
    type: count
    drill_fields: [department_name]
  }
}
