- dashboard: display_summary_210608
  title: Display_Summary_210608
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: "#Total Hits"
    name: "#Total Hits"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.total_hits]
    sorts: [ga_sessions.date desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.total_hits},1)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.total_hits: "#000000"
    show_title_ga_sessions.total_hits: false
    title_placement_ga_sessions.total_hits: above
    value_format_ga_sessions.total_hits: ''
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_placement_calculation: right
    style_calculation: "#3A4245"
    show_title_calculation: true
    title_placement_calculation: above
    value_format_calculation: ''
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 2
    col: 0
    width: 6
    height: 3
  - title: "#Impressions"
    name: "#Impressions"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.total_pageviews]
    sorts: [ga_sessions.date desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.total_pageviews},1)',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.total_pageviews: "#3A4245"
    show_title_ga_sessions.total_pageviews: false
    title_placement_ga_sessions.total_pageviews: above
    value_format_ga_sessions.total_pageviews: ''
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_calculation: DoD
    comparison_label_placement_calculation: right
    style_ga_sessions.total_hits: "#000000"
    show_title_ga_sessions.total_hits: false
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 7
    col: 0
    width: 6
    height: 3
  - title: "%Pageviews over Hits"
    name: "%Pageviews over Hits"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.pageviews_over_hits]
    sorts: [ga_sessions.date desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.pageviews_over_hits},1)',
        value_format: !!null '', value_format_name: percent_2, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.pageviews_over_hits: "#3A4245"
    show_title_ga_sessions.pageviews_over_hits: false
    title_placement_ga_sessions.pageviews_over_hits: above
    value_format_ga_sessions.pageviews_over_hits: ''
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_calculation: DoD
    comparison_label_placement_calculation: right
    show_title_ga_sessions.total_pageviews: false
    style_ga_sessions.total_hits: "#000000"
    show_title_ga_sessions.total_hits: false
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 10
    col: 0
    width: 6
    height: 3
  - title: "$Average Order Value"
    name: "$Average Order Value"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.visitor_id_count, ga_sessions__hits__product.product_revenue_measure]
    filters:
      ga_sessions__hits.e_commerce_action__action_type: '6'
    sorts: [ga_sessions.date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.new_percent},1)',
        value_format: !!null '', value_format_name: percent_1, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: average_order_value,
        label: average order value, expression: "${ga_sessions__hits__product.product_revenue_measure}/${ga_sessions.visitor_id_count}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number},
      {table_calculation: calculation_2, label: 전일대비, expression: 'offset(${average_order_value},1)',
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    hidden_fields: [ga_sessions.date, ga_sessions.visitor_id_count, ga_sessions__hits__product.product_revenue_measure]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_average_order_value: "#3A4245"
    show_title_average_order_value: false
    title_placement_average_order_value: above
    value_format_average_order_value: ''
    show_comparison_calculation_2: true
    comparison_style_calculation_2: percentage_change
    comparison_show_label_calculation_2: true
    pos_is_bad_calculation_2: true
    comparison_label_placement_calculation_2: right
    comp_value_format_calculation_2: ''
    show_title_ga_sessions.new_percent: false
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_placement_calculation: right
    show_title_ga_sessions.total_visit: false
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 2
    col: 11
    width: 7
    height: 3
  - title: Orders
    name: Orders
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.visitor_id_count]
    filters:
      ga_sessions__hits.e_commerce_action__action_type: '6'
    sorts: [ga_sessions.date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.new_percent},1)',
        value_format: !!null '', value_format_name: percent_1, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: average_order_value,
        label: average order value, expression: "${ga_sessions__hits__product.product_revenue_measure}/${ga_sessions.visitor_id_count}",
        value_format: !!null '', value_format_name: usd_0, is_disabled: true, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: 전일대비, expression: 'offset(${ga_sessions.visitor_id_count},1)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.visitor_id_count: "#3A4245"
    show_title_ga_sessions.visitor_id_count: false
    title_placement_ga_sessions.visitor_id_count: above
    value_format_ga_sessions.visitor_id_count: ''
    show_comparison_calculation_2: true
    comparison_style_calculation_2: percentage_change
    comparison_show_label_calculation_2: true
    pos_is_bad_calculation_2: true
    comparison_label_calculation_2: DoD
    comparison_label_placement_calculation_2: right
    show_title_average_order_value: false
    comp_value_format_calculation_2: ''
    show_title_ga_sessions.new_percent: false
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_placement_calculation: right
    show_title_ga_sessions.total_visit: false
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 7
    col: 11
    width: 7
    height: 6
  - title: "#shoppers Visits"
    name: "#shoppers Visits"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.total_visit]
    sorts: [ga_sessions.date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.total_visit},1)',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.total_visit: "#3A4245"
    show_title_ga_sessions.total_visit: false
    title_placement_ga_sessions.total_visit: above
    value_format_ga_sessions.total_visit: ''
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_placement_calculation: right
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 2
    col: 6
    width: 5
    height: 3
  - title: "%Click Through Rate"
    name: "%Click Through Rate"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.date, ga_sessions.new_percent]
    sorts: [ga_sessions.date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.new_percent},1)',
        value_format: !!null '', value_format_name: percent_1, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.new_percent: "#3A4245"
    show_title_ga_sessions.new_percent: false
    title_placement_ga_sessions.new_percent: above
    value_format_ga_sessions.new_percent: ''
    show_comparison_calculation: true
    comparison_style_calculation: percentage_change
    comparison_show_label_calculation: true
    pos_is_bad_calculation: true
    comparison_label_placement_calculation: right
    show_title_ga_sessions.total_visit: false
    comp_value_format_calculation: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 7
    col: 6
    width: 5
    height: 6
  - title: "% Repurchase Rate"
    name: "% Repurchase Rate"
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ga_sessions.avg_page_visit_per_user, ga_sessions.date]
    filters:
      ga_sessions.date: ''
    sorts: [ga_sessions.date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.new_percent},1)',
        value_format: !!null '', value_format_name: percent_1, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: average_order_value,
        label: average order value, expression: "${ga_sessions__hits__product.product_revenue_measure}/${ga_sessions.visitor_id_count}",
        value_format: !!null '', value_format_name: usd_0, is_disabled: true, _kind_hint: dimension,
        _type_hint: number}, {table_calculation: calculation_2, label: 전일대비, expression: 'offset(${ga_sessions.visitor_id_count},1)',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: calculation_3,
        label: 전일대비, expression: 'offset(${ga_sessions.avg_page_visit_per_user},1)',
        value_format: !!null '', value_format_name: decimal_3, _kind_hint: measure,
        _type_hint: number}, {dimension: calculation_5, label: Calculation 5, expression: "${average_order_value}",
        value_format: !!null '', value_format_name: decimal_4, _kind_hint: dimension,
        _type_hint: 'null'}]
    hidden_fields: [ga_sessions.date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_ga_sessions.avg_page_visit_per_user: "#3A4245"
    show_title_ga_sessions.avg_page_visit_per_user: false
    title_placement_ga_sessions.avg_page_visit_per_user: above
    value_format_ga_sessions.avg_page_visit_per_user: ''
    style_calculation_3: "#3A4245"
    show_title_calculation_3: true
    title_placement_calculation_3: above
    value_format_calculation_3: ''
    show_comparison_calculation_3: true
    comparison_style_calculation_3: percentage_change
    comparison_show_label_calculation_3: true
    pos_is_bad_calculation_3: true
    comparison_label_placement_calculation_3: right
    comp_value_format_calculation_3: ''
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
    row: 2
    col: 18
    width: 6
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<center> <font color="orange" size="6" > <b> Engage</b></font></center>

      '
    row: 0
    col: 6
    width: 5
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<center> <font color="red" size="6" > <b> Aware </b></font></center>

      '
    row: 0
    col: 0
    width: 6
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center><font color="00CCCC" size="6"> <b>Convert</b></font></center>
    row: 0
    col: 11
    width: 7
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center><font color="0033FF" size="6"> <b>Retain</b></font></center>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "---"
    row: 5
    col: 0
    width: 24
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<font size ="4"> <b><u>Campaign</u></b> Performance Trend(<u>Click</u>
      vs <u>Media Spend</u>) </font>

      '
    row: 13
    col: 0
    width: 24
    height: 2
  - title: visualization1
    name: visualization1
    model: gmc_poc_test
    explore: ga_sessions
    type: looker_area
    fields: [ga_sessions.date, ga_sessions.channel_grouping, ga_sessions.total_pageviews]
    pivots: [ga_sessions.channel_grouping]
    filters:
      ga_sessions.channel_grouping: "-Organic Search"
    sorts: [ga_sessions.channel_grouping 0, ga_sessions.date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.new_percent},1)',
        value_format: !!null '', value_format_name: percent_1, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: average_order_value,
        label: average order value, expression: "${ga_sessions__hits__product.product_revenue_measure}/${ga_sessions.visitor_id_count}",
        value_format: !!null '', value_format_name: usd_0, is_disabled: true, _kind_hint: dimension,
        _type_hint: number}, {table_calculation: calculation_2, label: 전일대비, expression: 'offset(${ga_sessions.visitor_id_count},1)',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: calculation_3,
        label: 전일대비, expression: 'offset(${ga_sessions.avg_page_visit_per_user},1)',
        value_format: !!null '', value_format_name: decimal_3, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: First Metric, orientation: left, series: [{axisId: ga_sessions__hits__product.product_revenue_measure,
            id: Affiliates - ga_sessions__hits__product.product_revenue_measure, name: Affiliates},
          {axisId: ga_sessions__hits__product.product_revenue_measure, id: Direct
              - ga_sessions__hits__product.product_revenue_measure, name: Direct},
          {axisId: ga_sessions__hits__product.product_revenue_measure, id: Display
              - ga_sessions__hits__product.product_revenue_measure, name: Display},
          {axisId: ga_sessions__hits__product.product_revenue_measure, id: Organic
              Search - ga_sessions__hits__product.product_revenue_measure, name: Organic
              Search}, {axisId: ga_sessions__hits__product.product_revenue_measure,
            id: Paid Search - ga_sessions__hits__product.product_revenue_measure,
            name: Paid Search}, {axisId: ga_sessions__hits__product.product_revenue_measure,
            id: Referral - ga_sessions__hits__product.product_revenue_measure, name: Referral},
          {axisId: ga_sessions__hits__product.product_revenue_measure, id: Social
              - ga_sessions__hits__product.product_revenue_measure, name: Social}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Display - ga_sessions.total_pageviews: "#fa252b"
      Organic Search - ga_sessions.total_pageviews: "#c6b7f2"
      Direct - ga_sessions.total_pageviews: "#f54ed5"
      Affiliates - ga_sessions.total_pageviews: "#348eab"
      Referral - ga_sessions.total_pageviews: "#4e8f49"
      Paid Search - ga_sessions.total_pageviews: "#11309e"
      Social - ga_sessions.total_pageviews: "#ffc538"
    series_labels: {}
    swap_axes: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    hidden_fields: []
    hidden_points_if_no: []
    range_max:
    title_hidden: true
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
      Device Browser: ga_sessions.device__browser
    row: 15
    col: 0
    width: 24
    height: 5
  - title: visualization1 (Copy)
    name: visualization1 (Copy)
    model: gmc_poc_test
    explore: ga_sessions
    type: looker_area
    fields: [ga_sessions.date, ga_sessions.channel_grouping, ga_sessions.total_hits]
    pivots: [ga_sessions.channel_grouping]
    filters:
      ga_sessions.channel_grouping: "-Organic Search"
    sorts: [ga_sessions.channel_grouping 0, ga_sessions.date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation, label: 전일대비, expression: 'offset(${ga_sessions.new_percent},1)',
        value_format: !!null '', value_format_name: percent_1, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: average_order_value,
        label: average order value, expression: "${ga_sessions__hits__product.product_revenue_measure}/${ga_sessions.visitor_id_count}",
        value_format: !!null '', value_format_name: usd_0, is_disabled: true, _kind_hint: dimension,
        _type_hint: number}, {table_calculation: calculation_2, label: 전일대비, expression: 'offset(${ga_sessions.visitor_id_count},1)',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: calculation_3,
        label: 전일대비, expression: 'offset(${ga_sessions.avg_page_visit_per_user},1)',
        value_format: !!null '', value_format_name: decimal_3, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Second Metric, orientation: left, series: [{axisId: ga_sessions.total_hits,
            id: Affiliates - ga_sessions.total_hits, name: Affiliates}, {axisId: ga_sessions.total_hits,
            id: Direct - ga_sessions.total_hits, name: Direct}, {axisId: ga_sessions.total_hits,
            id: Display - ga_sessions.total_hits, name: Display}, {axisId: ga_sessions.total_hits,
            id: Paid Search - ga_sessions.total_hits, name: Paid Search}, {axisId: ga_sessions.total_hits,
            id: Referral - ga_sessions.total_hits, name: Referral}, {axisId: ga_sessions.total_hits,
            id: Social - ga_sessions.total_hits, name: Social}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    series_types: {}
    series_colors:
      Display - ga_sessions.total_pageviews: "#fa252b"
      Organic Search - ga_sessions.total_pageviews: "#c6b7f2"
      Direct - ga_sessions.total_pageviews: "#f54ed5"
      Affiliates - ga_sessions.total_pageviews: "#348eab"
      Referral - ga_sessions.total_pageviews: "#4e8f49"
      Paid Search - ga_sessions.total_pageviews: "#11309e"
      Social - ga_sessions.total_pageviews: "#ffc538"
    series_labels: {}
    swap_axes: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    hidden_fields: []
    hidden_points_if_no: []
    range_max:
    title_hidden: true
    listen:
      Geo Network Country: ga_sessions.geo_network__country
      Geo Network Region: ga_sessions.geo_network__region
      Traffic Source: ga_sessions.traffic_source__source
      Device Operating System: ga_sessions.device__operating_system
      Date Formatted: ga_sessions.date_formatted
      Device Browser: ga_sessions.device__browser
    row: 20
    col: 0
    width: 24
    height: 6
  - title: First Metric
    name: First Metric
    model: gmc_poc_test
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions.channel_grouping, ga_sessions.total_visit, channel_grouping_copied]
    pivots: [channel_grouping_copied]
    sorts: [channel_grouping_copied, ga_sessions.channel_grouping desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{dimension: channel_grouping_copied, label: Channel_Grouping_copied,
        expression: "${ga_sessions.channel_grouping}", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
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
    x_axis_reversed: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Affiliates - ga_sessions.total_visit,
            id: Affiliates - ga_sessions.total_visit, name: Affiliates}, {axisId: Direct
              - ga_sessions.total_visit, id: Direct - ga_sessions.total_visit, name: Direct},
          {axisId: Display - ga_sessions.total_visit, id: Display - ga_sessions.total_visit,
            name: Display}, {axisId: Organic Search - ga_sessions.total_visit, id: Organic
              Search - ga_sessions.total_visit, name: Organic Search}, {axisId: Paid
              Search - ga_sessions.total_visit, id: Paid Search - ga_sessions.total_visit,
            name: Paid Search}, {axisId: Referral - ga_sessions.total_visit, id: Referral
              - ga_sessions.total_visit, name: Referral}, {axisId: Social - ga_sessions.total_visit,
            id: Social - ga_sessions.total_visit, name: Social}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    font_size: 12px
    series_types: {}
    label_color: [black]
    defaults_version: 1
    listen:
      Date Formatted: ga_sessions.date_formatted
      Device Browser: ga_sessions.device__browser
    row: 29
    col: 0
    width: 13
    height: 13
  - title: Second Metric
    name: Second Metric
    model: gmc_poc_test
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions.channel_grouping, ga_sessions.total_hits, channel_grouping_copied]
    pivots: [channel_grouping_copied]
    sorts: [ga_sessions.channel_grouping, channel_grouping_copied]
    limit: 500
    column_limit: 50
    dynamic_fields: [{dimension: channel_grouping_copied, label: Channel_Grouping_copied,
        expression: "${ga_sessions.channel_grouping}", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: ga_sessions.total_hits,
            id: ga_sessions.total_hits, name: Total Hits}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: 12px
    series_types: {}
    label_color: [black]
    defaults_version: 1
    listen:
      Date Formatted: ga_sessions.date_formatted
      Device Browser: ga_sessions.device__browser
    row: 29
    col: 13
    width: 11
    height: 13
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<font size ="4"> (<u>Clicks</u> vs <u>Media Spend</u>) per <u>Campaign</u>  </font>
      <font size ="3">(click a bar to highlight and filter the dashboard)</font>

      '
    row: 26
    col: 0
    width: 24
    height: 3
  - name: No Performance Driver
    title: No Performance Driver
    model: gmc_poc_test
    explore: ga_sessions
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [cal1]
    sorts: [cal1]
    limit: 500
    column_limit: 50
    dynamic_fields: [{dimension: cal1, label: cal1, expression: '"No Performance Driver"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10'
    orientation: horizontal
    show_title_cal1: false
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    limit_displayed_rows: false
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
    defaults_version: 0
    series_types: {}
    title_hidden: true
    listen: {}
    row: 7
    col: 18
    width: 6
    height: 6
  filters:
  - name: Date Formatted
    title: Date Formatted
    type: field_filter
    default_value: 2017/07/01 to 2017/07/10
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gmc_poc_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.date_formatted
  - name: Geo Network Country
    title: Geo Network Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: gmc_poc_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.geo_network__country
  - name: Geo Network Region
    title: Geo Network Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: gmc_poc_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.geo_network__region
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: gmc_poc_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.traffic_source__source
  - name: Device Operating System
    title: Device Operating System
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: gmc_poc_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.device__operating_system
  - name: Device Browser
    title: Device Browser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: gmc_poc_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.device__browser
