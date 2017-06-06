connection: "bq_test_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.12
# NOTE: for BigQuery specific considerations

explore: daily_activity_test {}

explore: chars {}

explore: locations {}

explore: zones {}

explore: hourly_activity {}

explore: weekly_summary {}

explore: weekly_summary_pdt {}

explore: daily_activity_pdt {}
