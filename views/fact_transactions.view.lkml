view: fact_transactions {
  sql_table_name: `hnm.fact_transactions`
    ;;

  dimension: article_id {
    type: string
    sql: ${TABLE}.article_id ;;
  }

  dimension: colour_group_code {
    type: number
    sql: ${TABLE}.colour_group_code ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: department_no {
    type: number
    sql: ${TABLE}.department_no ;;
  }

  dimension: garment_group_no {
    type: number
    sql: ${TABLE}.garment_group_no ;;
  }

  dimension: graphical_appearance_no {
    type: number
    sql: ${TABLE}.graphical_appearance_no ;;
  }

  dimension: index_code {
    type: string
    sql: ${TABLE}.index_code ;;
  }

  dimension: index_group_no {
    type: number
    sql: ${TABLE}.index_group_no ;;
  }

  dimension: perceived_colour_master_id {
    type: number
    sql: ${TABLE}.perceived_colour_master_id ;;
  }

  dimension: perceived_colour_value_id {
    type: number
    sql: ${TABLE}.perceived_colour_value_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_code {
    type: number
    sql: ${TABLE}.product_code ;;
  }

  dimension: product_type_no {
    type: number
    sql: ${TABLE}.product_type_no ;;
  }

  dimension: sales_channel_id {
    type: number
    sql: ${TABLE}.sales_channel_id ;;
  }

  dimension: section_no {
    type: number
    sql: ${TABLE}.section_no ;;
  }

  dimension_group: t_dat {
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
    sql: ${TABLE}.t_dat ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
