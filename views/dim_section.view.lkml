view: dim_section {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_section`
    ;;

  dimension: section_name {
    type: string
    sql: ${TABLE}.section_name ;;
  }

  dimension: section_no {
    type: number
    sql: ${TABLE}.section_no ;;
  }

  measure: count {
    type: count
    drill_fields: [section_name]
  }
}
