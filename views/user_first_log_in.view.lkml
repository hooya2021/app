view: user_first_log_in {
  derived_table: {
    sql: select min(start_time) as first_start_time,user_id, device_code, email,plus.created_at as plus_created_at from `alidbtogcp.costmin.app_user_log_details` as app_log

            left join `alidbtogcp.costway_com.customer_plus_change_record` as plus on app_log.user_id = plus.customer_id
            where action_type =7
            group by user_id,device_code,email,plus_created_at
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

  dimension_group: plus_created_at {
    type: time
    datatype: datetime
    sql: ${TABLE}.plus_created_at ;;
  }

  dimension_group: log_in_after_purchase {
    type: duration
    sql_start: cast(plus_created_at as timestamp) ;;
    sql_end:${TABLE}.first_start_time;;
  }

  set: detail {
    fields: [first_start_time_time, user_id, device_code, email, plus_created_at_time]
  }
}
