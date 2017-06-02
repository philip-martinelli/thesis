view: jan_activity {
  sql_table_name: wow.jan_activity ;;

  dimension: _guild {
    type: number
    sql: ${TABLE}._guild ;;
  }

  dimension: _level {
    type: number
    sql: ${TABLE}._level ;;
  }

  dimension_group: _timestamp {
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
    sql: ${TABLE}._timestamp ;;
  }

  dimension: _zone {
    type: string
    sql: ${TABLE}._zone ;;
  }

  dimension: char {
    type: number
    sql: ${TABLE}.char ;;
  }

  dimension: diff {
    type: number
    sql: ${TABLE}.diff ;;
  }

  dimension: session {
    type: number
    sql: ${TABLE}.session ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }

  measure: number_of_sessions {
    type: sum
    sql: ${TABLE}.session ;;
  }

  measure: minutes_played {
    type: sum
    sql: ${TABLE}.diff ;;
  }

  measure: minutes_per_session {
    type: number
    sql: ROUND(SUM(jan_activity.diff)/SUM(jan_activity.session),0) ;;
  }
}
