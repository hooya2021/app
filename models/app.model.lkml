connection: "costmin"

# include all the views
include: "/views/**/*.view"

datagroup: app_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: app_default_datagroup

explore: app_user_log_details {}
explore: app_report_day_users {}
