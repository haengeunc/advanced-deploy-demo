
- dashboard: user_report_interim
  title: User Report Interim
  extends: user_report
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: User report
    name: User report
    model: haengeun_demo
    explore: users
    type: single_value
    fields: [users.avg_age]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Age
    value_format: "##.##"
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
