connection: "bq_test_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.12
# NOTE: for BigQuery specific considerations

explore: daily_activity_clean {}

explore: chars_clean {}

explore: locations {}

explore: zones {}

explore: hourly_activity {}

explore: weekly_summary_clean {}

explore: weekly_summary_dist {}

explore: daily_activity_dist {}
