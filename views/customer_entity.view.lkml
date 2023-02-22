view: customer_entity {
  sql_table_name: `alidbtogcp.costway_com.customer_entity`
    ;;

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
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

  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customer_phone ;;
  }

  dimension: customer_verify {
    type: number
    sql: ${TABLE}.customer_verify ;;
  }

  dimension: disable_auto_group_change {
    type: number
    sql: ${TABLE}.disable_auto_group_change ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: interest {
    type: string
    sql: ${TABLE}.interest ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_first {
    type: number
    sql: ${TABLE}.is_first ;;
  }

  dimension: is_phone_sub {
    type: number
    sql: ${TABLE}.is_phone_sub ;;
  }

  dimension: login_num {
    type: number
    sql: ${TABLE}.login_num ;;
  }

  dimension: phone_verify {
    type: number
    sql: ${TABLE}.phone_verify ;;
  }

  dimension_group: plus_exp {
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
    datatype: datetime
    sql: ${TABLE}.plus_exp_date ;;
  }

  dimension: plus_no {
    type: string
    sql: ${TABLE}.plus_no ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
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

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
