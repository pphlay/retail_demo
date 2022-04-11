view: fact_sales {
  sql_table_name: `dcsea-ac-hpegoog.hnm.fact_sales`
    ;;

  dimension: article_id {
    type: string
    description: "Primary Key"
    sql: ${TABLE}.article_id ;;
  }

  dimension: colour_group_code {
    type: number
    description: "Colour Group"
    sql: ${TABLE}.colour_group_code ;;
  }

  dimension: customer_id {
    type: string
    description: "Customer Id"
    sql: ${TABLE}.customer_id ;;
  }

  dimension: department_no {
    type: number
    description: "Department"
    sql: ${TABLE}.department_no ;;
  }

  dimension: garment_group_no {
    type: number
    description: "Garment Group"
    sql: ${TABLE}.garment_group_no ;;
  }

  dimension: graphical_appearance_no {
    type: number
    description: "Graphical Appearance No"
    sql: ${TABLE}.graphical_appearance_no ;;
  }

  dimension: index_code {
    type: string
    description: "Index Code"
    sql: ${TABLE}.index_code ;;
  }

  dimension: index_group_no {
    type: number
    description: "Index Group"
    sql: ${TABLE}.index_group_no ;;
  }

  dimension: perceived_colour_master_id {
    type: number
    description: "Perceived Colour Master"
    sql: ${TABLE}.perceived_colour_master_id ;;
  }

  dimension: perceived_colour_value_id {
    type: number
    description: "Perceived Colour Value"
    sql: ${TABLE}.perceived_colour_value_id ;;
  }

  dimension_group: period_dt {
    type: time
    description: "Reporting Period"
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

  dimension: product_code {
    type: number
    description: "Product Code"
    sql: ${TABLE}.product_code ;;
  }

  dimension: product_type_no {
    type: number
    description: "Product Type Code"
    sql: ${TABLE}.product_type_no ;;
  }

  dimension: sales_amt {
    type: number
    description: "Sales Amount"
    sql: ${TABLE}.sales_amt ;;
  }

  dimension: sales_channel_id {
    type: number
    description: "Store Id"
    sql: ${TABLE}.sales_channel_id ;;
  }

  dimension: sales_qty {
    type: number
    description: "Sales Quantity"
    sql: ${TABLE}.sales_qty ;;
  }

  dimension: section_no {
    type: number
    description: "Section No"
    sql: ${TABLE}.section_no ;;
  }

  dimension_group: t_dat {
    type: time
    description: "Transaction Date"
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
