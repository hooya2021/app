view: user_first_log_in {
  derived_table: {
    sql: select min(start_time) as first_start_time,user_id, device_code, email from `alidbtogcp.costmin.app_user_log_details`
      where action_type =7
      group by user_id,device_code,email
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: first_start_time {
    type: time
    sql: ${TABLE}.first_start_time ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: device_code {
    type: string
    sql: ${TABLE}.device_code ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  set: detail {
    fields: [first_start_time_time, user_id, device_code, email]
  }
}
