view: dim_customer {
  sql_table_name: `dcsea-ac-hpegoog.hnm.dim_customer`
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}.Active ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: club_member_status {
    type: string
    sql: ${TABLE}.club_member_status ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: fashion_news_frequency {
    type: string
    sql: ${TABLE}.fashion_news_frequency ;;
  }

  dimension: fn {
    type: number
    sql: ${TABLE}.FN ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
