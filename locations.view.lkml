view: locations {
  sql_table_name: wow.locations ;;

  dimension: game_version {
    type: string
    sql: ${TABLE}.Game_Version ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.Location_Type ;;
  }

  dimension: map_id {
    type: number
    sql: ${TABLE}.Map_ID ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [location_name]
  }
}
