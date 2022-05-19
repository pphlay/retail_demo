connection: "retail_demo_poc"

# include all the views
include: "/views/**/*.view"

datagroup: retail_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_demo_default_datagroup

explore: fact_sales {
  join: dim_product_type {
    type: left_outer
    sql_on: ${fact_sales.product_type_no} = ${dim_product_type.product_type_no} ;;
    relationship:  many_to_one
  }

  join: dim_product {
    type: left_outer
    sql_on: ${fact_sales.product_code} = ${dim_product.product_code} ;;
    relationship:  many_to_one
  }

  join: dim_graphical_appearance {
    type: left_outer
    sql_on: ${fact_sales.graphical_appearance_no} = ${dim_graphical_appearance.graphical_appearance_no} ;;
    relationship:  many_to_one
  }

  join: dim_colour_group {
    type: left_outer
    sql_on: ${fact_sales.colour_group_code} = ${dim_colour_group.colour_group_code} ;;
    relationship:  many_to_one
  }

  join: dim_perceived_colour {
    type: left_outer
    sql_on: ${fact_sales.perceived_colour_value_id} = ${dim_perceived_colour.perceived_colour_value_id} ;;
    relationship:  many_to_one
  }

  join: dim_perceived_colour_master {
    type: left_outer
    sql_on: ${fact_sales.perceived_colour_master_id} = ${dim_perceived_colour_master.perceived_colour_master_id} ;;
    relationship:  many_to_one
  }

  join: dim_department {
    type: left_outer
    sql_on: ${fact_sales.department_no} = ${dim_department.department_no} ;;
    relationship:  many_to_one
  }

  join: dim_index {
    type: left_outer
    sql_on: ${fact_sales.index_code} = ${dim_index.index_code} ;;
    relationship:  many_to_one
  }

  join: dim_index_group {
    type: left_outer
    sql_on: ${fact_sales.index_group_no} = ${dim_index_group.index_group_no} ;;
    relationship:  many_to_one
  }

  join: dim_section {
    type: left_outer
    sql_on: ${fact_sales.section_no} = ${dim_section.section_no} ;;
    relationship:  many_to_one
  }

  join: dim_garment_group {
    type: left_outer
    sql_on: ${fact_sales.garment_group_no} = ${dim_garment_group.garment_group_no} ;;
    relationship:  many_to_one
  }

  join: dim_customer{
    type: left_outer
    sql_on: ${fact_sales.customer_id} = ${dim_customer.customer_id} ;;
    relationship:  many_to_one
  }

  # join: dim_detail_desc {
  #   type: left_outer
  #   sql_on: ${fact_sales.product_type_no} = ${dim_detail_desc.product_type_no}
  #     AND ${fact_sales.department_no } = ${dim_detail_desc.department_no }
  #     AND ${fact_sales.index_code} = ${dim_detail_desc.index_code}
  #     AND ${fact_sales.section_no} = ${dim_detail_desc.section_no}
  #     AND ${fact_sales.index_group_no} = ${dim_detail_desc.index_group_no};;
  #   relationship:  one_to_one
  # }

  # join: dim_period {
  #   type: left_outer
  #   sql_on: ${fact_sales.period_dt} = ${dim_period.period_dt} ;;
  #   relationship:  one_to_one
  # }
}
