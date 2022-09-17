view: app_report_day_users {
  sql_table_name: `alidbtogcp.costmin.app_report_day_users`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active_7days_ago_device_nums {
    type: number
    sql: ${TABLE}.active_7days_ago_device_nums ;;
  }

  dimension: active_device_day15_num {
    type: number
    sql: ${TABLE}.active_device_day15_num ;;
  }

  dimension: active_device_day2_num {
    type: number
    sql: ${TABLE}.active_device_day2_num ;;
  }

  dimension: active_device_day30_num {
    type: number
    sql: ${TABLE}.active_device_day30_num ;;
  }

  dimension: active_device_day3_num {
    type: number
    sql: ${TABLE}.active_device_day3_num ;;
  }

  dimension: active_device_day60_num {
    type: number
    sql: ${TABLE}.active_device_day60_num ;;
  }

  dimension: active_device_day7_num {
    type: number
    sql: ${TABLE}.active_device_day7_num ;;
  }

  dimension: active_device_day90_num {
    type: number
    sql: ${TABLE}.active_device_day90_num ;;
  }

  dimension: active_device_num {
    type: number
    sql: ${TABLE}.active_device_num ;;
  }

  dimension: active_login_user_num {
    type: number
    sql: ${TABLE}.active_login_user_num ;;
  }

  dimension: active_visitor_num {
    type: number
    sql: ${TABLE}.active_visitor_num ;;
  }

  dimension: app_crash_num {
    type: number
    sql: ${TABLE}.app_crash_num ;;
  }

  dimension: client_type {
    type: string
    sql: ${TABLE}.client_type ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: day_transfer {
    type: date
    datatype: date
    sql: parse_date('%Y%m%d',cast(day as string)) ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: new_add_car_product_num {
    type: number
    sql: ${TABLE}.new_add_car_product_num ;;
  }

  dimension: new_collect_product_num {
    type: number
    sql: ${TABLE}.new_collect_product_num ;;
  }

  dimension: new_device_day15_num {
    type: number
    sql: ${TABLE}.new_device_day15_num ;;
  }

  dimension: new_device_day2_num {
    type: number
    sql: ${TABLE}.new_device_day2_num ;;
  }

  dimension: new_device_day30_num {
    type: number
    sql: ${TABLE}.new_device_day30_num ;;
  }

  dimension: new_device_day3_num {
    type: number
    sql: ${TABLE}.new_device_day3_num ;;
  }

  dimension: new_device_day60_num {
    type: number
    sql: ${TABLE}.new_device_day60_num ;;
  }

  dimension: new_device_day7_num {
    type: number
    sql: ${TABLE}.new_device_day7_num ;;
  }

  dimension: new_device_day90_num {
    type: number
    sql: ${TABLE}.new_device_day90_num ;;
  }

  dimension: new_device_num {
    type: number
    sql: ${TABLE}.new_device_num ;;
  }

  dimension: new_register_user_num {
    type: number
    sql: ${TABLE}.new_register_user_num ;;
  }

  dimension: new_subscribe_product_num {
    type: number
    sql: ${TABLE}.new_subscribe_product_num ;;
  }

  dimension: new_visitor_num {
    type: number
    sql: ${TABLE}.new_visitor_num ;;
  }

  dimension: page_num {
    type: number
    sql: ${TABLE}.page_num ;;
  }

  dimension: spend_seconds {
    type: number
    sql: ${TABLE}.spend_seconds ;;
  }

  dimension: start_app_num {
    type: number
    sql: ${TABLE}.start_app_num ;;
  }

  dimension: total_device_num {
    type: number
    sql: ${TABLE}.total_device_num ;;
  }

  dimension: total_login_user_num {
    type: number
    sql: ${TABLE}.total_login_user_num ;;
  }

  dimension: total_visitor_num {
    type: number
    sql: ${TABLE}.total_visitor_num ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
