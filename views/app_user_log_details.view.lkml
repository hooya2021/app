view: app_user_log_details {
  sql_table_name: `costmin.app_user_log_details`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_type {
    type: number
    sql: ${TABLE}.action_type ;;
  }

  dimension: action_type_code {
    case: {
      when: {
        sql: ${TABLE}.action_type = 1 ;;
        label: "访问页面"
      }
      when: {
        sql: ${TABLE}.action_type = 2 ;;
        label: "加购"
      }
      when: {
        sql: ${TABLE}.action_type = 3 ;;
        label: "APP奔溃"
      }
      when: {
        sql: ${TABLE}.action_type = 4 ;;
        label: "收藏"
      }
      when: {
        sql: ${TABLE}.action_type = 5 ;;
        label: "注册成功"
      }
      when: {
        sql: ${TABLE}.action_type = 6 ;;
        label: "启动APP"
      }
      when: {
        sql: ${TABLE}.action_type = 7 ;;
        label: "登录成功"
      }
      else: "Not Found"
    }
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: client_type {
    type: string
    sql: ${TABLE}.client_type ;;
  }

  dimension_group: created_at {
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

  dimension_group: now {
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
    sql: current_timestamp ;;
  }
  dimension: current_page_params {
    type: string
    sql: ${TABLE}.current_page_params ;;
  }

  dimension: current_page_type {
    type: number
    sql: ${TABLE}.current_page_type ;;
  }

  dimension_group: current_time {
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
    sql: ${TABLE}.current_time ;;
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

  dimension: device_code {
    type: string
    sql: ${TABLE}.device_code ;;
  }

  dimension: emulator_reason {
    type: string
    sql: ${TABLE}.emulator_reason ;;
  }

  dimension: ip_string {
    type: string
    sql: ${TABLE}.ip_string ;;
  }

  dimension: is_emulator {
    type: number
    sql: ${TABLE}.is_emulator ;;
  }

  dimension: is_login_user {
    type: number
    sql: ${TABLE}.is_login_user ;;
  }

  dimension: is_root {
    type: number
    sql: ${TABLE}.is_root ;;
  }

  dimension: origin_page_params {
    type: string
    sql: ${TABLE}.origin_page_params ;;
  }

  dimension: origin_page_type {
    type: number
    sql: ${TABLE}.origin_page_type ;;
  }

  dimension: phone_model {
    type: string
    sql: ${TABLE}.phone_model ;;
  }

  dimension: screen_height {
    type: number
    sql: ${TABLE}.screen_height ;;
  }

  dimension: screen_width {
    type: number
    sql: ${TABLE}.screen_width ;;
  }

  dimension: spend_seconds {
    type: number
    sql: ${TABLE}.spend_seconds ;;
  }

  dimension: start_app_id {
    type: number
    sql: ${TABLE}.start_app_id ;;
  }

  dimension_group: start_time {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: count_of_start_date {
    type: number
    sql:  COUNT(DISTINCT (TIMESTAMP_TRUNC(app_user_log_details.start_time , DAY))) ;;
  }

  dimension_group: user_return_time {
    type: duration
    sql_start:${TABLE}.start_time;;
    sql_end:TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), SECOND, 'America/Los_Angeles');;
  }

  dimension: system_version {
    type: string
    sql: ${TABLE}.system_version ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
