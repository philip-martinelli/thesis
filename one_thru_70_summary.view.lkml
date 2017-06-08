view: one_thru_70_summary {
  derived_table: {
    sql:
        SELECT
          a.*,b.minutes,b.sessions,b.days_active
        FROM wow.chars_clean a
        JOIN(
          SELECT
            char,SUM(minutes) as minutes ,SUM(session) as sessions ,SUM(days_active) as days_active
          FROM wow.daily_activity_for_lvl_70
          GROUP BY 1
              ) b
        ON a.char = b.char
        WHERE b.minutes > 180 --getting rid of dirty data
        ORDER BY 1
    ;;
  }

  dimension: char {
    type: string
    sql: ${TABLE}.char ;;
    primary_key: yes
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.minutes ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: days_active {
    type: number
    sql: ${TABLE}.days_active ;;
  }

  measure: avg_minutes {
    type: average
    sql:  ${minutes};;
  }

  measure: avg_sessions {
    type: average
    sql: ${sessions} ;;
  }

  measure: avg_days_active {
    type: average
    sql: ${days_active} ;;
  }
}
