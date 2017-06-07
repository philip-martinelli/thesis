view: chars_clean {
  sql_table_name: wow.chars_clean ;;

  dimension: new_players {
    type: string
    sql: CASE WHEN EXISTS (SELECT * FROM wow.new_chars b WHERE b.char = ${char}) THEN 'New' else 'Existing' END;;
  }

  dimension: char {
    type: number
    sql: ${TABLE}.char ;;
  }


  dimension: _charclass {
    type: string
    sql: ${TABLE}._charclass ;;
  }

  dimension: _race {
    type: string
    sql: ${TABLE}._race ;;
  }


  measure: count {
    label: "Count"
    type: count
    drill_fields: []
  }


}
