view: dim_graphical_appearance {
  sql_table_name: `hnm.dim_graphical_appearance`
    ;;

  dimension: graphical_appearance_name {
    type: string
    sql: ${TABLE}.graphical_appearance_name ;;
  }

  dimension: graphical_appearance_no {
    type: number
    sql: ${TABLE}.graphical_appearance_no ;;
  }

  measure: count {
    type: count
    drill_fields: [graphical_appearance_name]
  }
}
