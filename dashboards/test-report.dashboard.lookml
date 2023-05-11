- dashboard: test_23_0
  title: Test 23.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qBLFhPSjjgfQwmBzdm59Q4
  elements:
  - title: Traffic source by age group - row totals included
    name: Traffic source by age group - row totals included
    model: looker_training_haengeun
    explore: order_items
    type: looker_column
    fields: [age_group, users.traffic_source, users.count]
    pivots: [users.traffic_source]
    sorts: [users.traffic_source, users.count desc 6]
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    dynamic_fields: [{category: dimension, description: '', label: Age group, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: age_group,
        args: [users.age, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Senior,
              filter: ">60"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Adult, filter: "[18,60]"}], Young], _kind_hint: dimension, _type_hint: string}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
    row: 9
    col: 13
    width: 11
    height: 13
  - title: Users across countries
    name: Users across countries
    model: looker_training_haengeun
    explore: order_items
    type: looker_grid
    fields: [users.count, users.country]
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    y_axes: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
      Brand: products.brand
    row: 3
    col: 0
    width: 13
    height: 6
  - title: Total users signup - last 365 days
    name: Total users signup - last 365 days
    model: looker_training_haengeun
    explore: order_items
    type: single_value
    fields: [users.count]
    filters:
      users.created_year: 1 years ago for 1 years
    sorts: [users.count desc 0]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
      Brand: products.brand
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Users sign-up by age group
    name: Users sign-up by age group
    model: looker_training_haengeun
    explore: order_items
    type: looker_line
    fields: [age_group, users.count, users.created_month]
    pivots: [age_group]
    fill_fields: [users.created_month]
    sorts: [age_group desc, users.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Age group, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: age_group,
        args: [users.age, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Senior,
              filter: ">60"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Adult, filter: "[18,60]"}], Young], _kind_hint: dimension, _type_hint: string}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
      Brand: products.brand
    row: 1
    col: 13
    width: 11
    height: 8
  - title: Total users signup - All time
    name: Total users signup - All time
    model: looker_training_haengeun
    explore: order_items
    type: single_value
    fields: [users.count]
    sorts: [users.count desc 0]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
      Brand: products.brand
    row: 0
    col: 6
    width: 7
    height: 3
  - title: Scatterplot - avg sale price by order created time
    name: Scatterplot - avg sale price by order created time
    model: looker_training_haengeun
    explore: order_items
    type: looker_scatter
    fields: [order_items.status, order_items.average_sale_price, order_items.created_time]
    pivots: [order_items.status]
    sorts: [order_items.status, order_items.created_time desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    cluster_points: true
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    hidden_pivots: {}
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
    row: 19
    col: 0
    width: 13
    height: 8
  - title: Data History Playback Demo
    name: Data History Playback Demo
    model: looker_training_haengeun
    explore: order_items
    type: looker_column
    fields: [users.count, users.country]
    filters:
      order_items.created_time: 60 months ago for 60 months
      order_items.created_at_date_time: 3 years ago for 3 years
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
    row: 27
    col: 0
    width: 13
    height: 6
  - title: Area visual - unpin from zero, null value turned off
    name: Area visual - unpin from zero, null value turned off
    model: looker_training_haengeun
    explore: order_items
    type: looker_area
    fields: [users.count, products.category]
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: users.count, id: users.count,
            name: Users}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Status: order_items.status
    row: 22
    col: 13
    width: 11
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"The ","fontSize":"16px","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(32, 33, 36)"},{"text":"WYSIWYG Text Tiles","fontSize":"16px","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(32, 33, 36)","bold":true},{"text":" Labs feature is
      now out of Labs and generally available. Dashboard creators and editors can
      create new ","fontSize":"16px","backgroundColor":"rgb(255, 255, 255)","color":"rgb(32,
      33, 36)"},{"type":"a","url":"https://cloud.google.com/looker/docs/creating-user-defined-dashboards#adding_text","children":[{"text":"Text","bold":true},{"text":" tiles"}],"id":1676473350902},{"text":" with
      a visual editing experience.","fontSize":"16px","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(32, 33, 36)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 33
    col: 0
    width: 13
    height: 3
  - type: button
    name: button_898
    rich_content_json: '{"text":"New Button","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED"}'
    row: 0
    col: 14
    width: 10
    height: 1
  - title: Count of order items
    name: Count of order items
    model: looker_training_haengeun
    explore: order_items
    type: looker_grid
    fields: [order_items.status, order_items.count]
    sorts: [order_items.status]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
      Brand: products.brand
    row: 9
    col: 0
    width: 13
    height: 4
  - title: Top 10 brand count items sold
    name: Top 10 brand count items sold
    model: looker_training_haengeun
    explore: order_items
    type: looker_grid
    fields: [order_items.count, products.brand]
    sorts: [order_items.count desc 0]
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Created Time: inventory_items.created_time
      Status: order_items.status
      Brand: products.brand
    row: 13
    col: 0
    width: 13
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      Code for html tabs to pass filters to one dashboard to another: (it is in a markdown text box)
      <div style="border-bottom: solid 1px #0066FF;">

      <nav style="font-size: 14px; padding: 10px 0px 0px; height: 60px">

      <a style="padding: 5px 20px; border-top: solid 1px #0066FF; border-left: solid 1px #0066FF; border-right: solid 1px #0066FF; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #FFFFFF;" href="#"> Accesses </a>

      <a style="padding: 5px 20px; border-bottom: solid 1px #0066FF; float: left; line-height: 40px;" href="https://telefonica.cloud.looker.com/dashboards/1618" > B2C KPIs </a>

      <a style="padding: 5px 20px; border-bottom: solid 1px #0066FF; float: left; line-height: 40px;" href="https://telefonica.cloud.looker.com/dashboards/1619" > B2B KPIs </a>

      </nav>

      </div>
    row: 28
    col: 13
    width: 8
    height: 6
  filters:
  - name: Created Time
    title: Created Time
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: looker_training_haengeun
    explore: order_items
    listens_to_filters: []
    field: inventory_items.created_time
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: looker_training_haengeun
    explore: order_items
    listens_to_filters: []
    field: order_items.status
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: looker_training_haengeun
    explore: order_items
    listens_to_filters: []
    field: products.brand
