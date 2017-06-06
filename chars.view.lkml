view: chars {
  sql_table_name: wow.chars ;;

  dimension: _charclass {
    type: string
    sql: ${TABLE}._charclass ;;
  }

  dimension: _race {
    type: string
    sql: ${TABLE}._race ;;
  }

  dimension: char {
    type: number
    sql: ${TABLE}.char ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  filter: new_players {
    type: yesno
    sql: EXISTS (SELECT b._timestamp FROM wow.avatars b WHERE b.char = ${char} AND b._level = 1) ;;
  }

}
