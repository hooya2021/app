view: customer_group {
  sql_table_name: `alidbtogcp.costway_com.customer_group`
    ;;
  drill_fields: [customer_group_id]

  dimension: customer_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: customer_group_code {
    type: string
    sql: ${TABLE}.customer_group_code ;;
  }

  dimension: tax_class_id {
    type: number
    sql: ${TABLE}.tax_class_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_group_id, sales_flat_order.count]
  }
}
