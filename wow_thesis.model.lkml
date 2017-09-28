connection: "bq_test_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.12
# NOTE: for BigQuery specific considerations

explore: daily_activity_clean {}

explore: chars_clean {
  join: one_thru_70_summary {
    relationship: one_to_one
    sql_on: ${chars_clean.char}=${one_thru_70_summary.char} ;;
    sql_where: ${one_thru_70_summary.char} is not null ;;
  }
  fields: [ALL_FIELDS*]
}

explore: char_facts {
  join: chars_clean {
    relationship: one_to_one
    sql_on: ${chars_clean.char} = ${char_facts.char} ;;
  }
}

explore: locations {}

explore: zones {}

explore: hourly_activity_clean {}

explore: weekly_summary_clean {}

explore: weekly_summary_dist {}

explore: daily_activity_dist {}

explore: zz_new_chars_by_month {}

explore: zz_chars_leveling_funnel {}

explore: test {}

explore: chars_c {
  view_name: chars_clean
  fields: [ALL_FIELDS*,-char_facts.total_minutes]
  join: char_facts {
    sql_on: ${chars_clean.char} = ${char_facts.char} ;;
    relationship: one_to_one
  }
}
