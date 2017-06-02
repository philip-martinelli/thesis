connection: "bq_test_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.12
# NOTE: for BigQuery specific considerations

explore: avatars {}

explore: chars {}

explore: locations {}

explore: mastertest {}

explore: zones {}

explore: m1 {}

explore: jan_activity {}
