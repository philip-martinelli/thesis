view: test {
  sql_table_name:wow.locations ;;

  measure: fake_decimal {
    type: number
    value_format: "0.0%"
    sql: 1.0 * 55/100 ;;
  }



  }
