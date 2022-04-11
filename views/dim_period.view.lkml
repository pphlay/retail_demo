view: dim_period {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_period`
    ;;

  dimension: month_nm {
    type: string
    sql: ${TABLE}.month_nm ;;
  }

  dimension: month_short_nm {
    type: string
    sql: ${TABLE}.month_short_nm ;;
  }

  dimension_group: period_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.period_dt ;;
  }

  dimension: qtr {
    type: string
    sql: ${TABLE}.Qtr ;;
  }

  dimension: semester {
    type: string
    sql: ${TABLE}.Semester ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
