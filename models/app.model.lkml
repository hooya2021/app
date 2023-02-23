connection: "costmin"

# include all the views
include: "/views/**/*.view"

datagroup: app_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: app_default_datagroup

explore: app_user_log_details {
  join: customer_entity {
    relationship: one_to_one
    sql_on: ${app_user_log_details.user_id} = ${customer_entity.entity_id} ;;
  }
  join: sales_flat_order {
    relationship: one_to_many
    sql_on: ${app_user_log_details.email} = ${sales_flat_order.customer_email}  ;;
  }
  join: user_first_log_in {
    relationship: one_to_one
    sql_on: ${app_user_log_details.user_id} = ${user_first_log_in.user_id};;
  }
}
explore: app_report_day_users {}
