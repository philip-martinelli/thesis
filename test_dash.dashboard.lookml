- dashboard: test_dash [test]
  title: Test Dash
  layout: tile
  tile_size: 100

  filters:

  elements:
  - name: add_a_unique_name_1506618627
    title: Untitled Visualization
    model: wow_thesis
    explore: char_facts
    type: table
    fields: [chars_clean._race, chars_clean.count]
    sorts: [chars_clean.count desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}

  - name: Races
    label: Races
    model: wow_thesis
    explore: chars_clean
    type: looker_single_element
    measures: [chars_clean._race]
    dimensions: [chars_clean.count]
    # sorts:
    # - chars_clean.count desc
    # limit: 500
    # column_limit: 50
    # query_timezone: America/Chicago
    # value_labels: labels
    # label_type: labPer
    # stacking: ''
    # show_value_labels: false
    # label_density: 25
    # legend_position: center
    # x_axis_gridlines: false
    # y_axis_gridlines: true
    # show_view_names: true
    # limit_displayed_rows: false
    # y_axis_combined: true
    # show_y_axis_labels: true
    # show_y_axis_ticks: true
    # y_axis_tick_density: default
    # y_axis_tick_density_custom: 5
    # show_x_axis_label: true
    # show_x_axis_ticks: true
    # x_axis_scale: auto
    # y_axis_scale_mode: linear
    # ordering: none
    # show_null_labels: false
    # show_totals_labels: false
    # show_silhouette: false
    # totals_color: "#808080"
    # series_types: {}
    # colors: 'palette: Looker Classic'
    # series_colors: {}
    # listen: {}
    # row: 34
    # col: 9
    width: 15
    height: 8
