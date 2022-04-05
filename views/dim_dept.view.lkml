view: dim_dept {
  sql_table_name: `hnm.dim_dept`
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
