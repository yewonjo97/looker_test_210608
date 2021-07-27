view: ga_sessions {
  sql_table_name: `GMC_PoC.ga_sessions`
    ;;

  parameter: p_suggest {
    label: "test suggestion"
    suggest_dimension: "device__operating_system"
  }


  parameter: p_depth_1{
    label: "Depth 1"
    type: string
    default_value: "Browser"
    allowed_value: {label:  "NULL" value: "NULL"}
    allowed_value: {label : "Browser" value : "Browser"}
    allowed_value: {label : "Operating System" value: "Operating System"}
    allowed_value: {label : "Country" value : "Country"}
    allowed_value: {label : "Region" value : "Region"}
  }

  parameter: p_depth_2{
    label: "Depth 2"
    type: string
    default_value: "Country"
    allowed_value: {label:  "NULL" value: "NULL"}
    allowed_value: {label : "Browser" value : "Browser"}
    allowed_value: {label : "Operating System" value: "Operating System"}
    allowed_value: {label : "Country" value : "Country"}
    allowed_value: {label : "Region" value : "Region"}
  }


  dimension: depth_1 {
    type: string
    sql:
    {% if p_depth_1._parameter_value == "'Browser'"%}
      ${device__browser}
    {% elsif p_depth_1._parameter_value == "'Operating System'"%}
      ${device__operating_system}
    {% elsif p_depth_1._parameter_value == "'Country'"%}
      ${geo_network__country}
    {% elsif p_depth_1._parameter_value == "'Region'"%}
      ${geo_network__region}
    {% elsif p_depth_1._parameter_value == "'NULL'"%}
      ""
    {%endif%}
    ;;
    drill_fields: [set_detail*]
  }

  dimension: depth_2 {
    type: string
    sql:
    {% if p_depth_2._parameter_value == "'Browser'"%}
      ${device__browser}
    {% elsif p_depth_2._parameter_value == "'Operating System'"%}
      ${device__operating_system}
    {% elsif p_depth_2._parameter_value == "'Country'"%}
      ${geo_network__country}
    {% elsif p_depth_2._parameter_value == "'Region'"%}
      ${geo_network__region}
    {% elsif p_depth_2._parameter_value == "'NULL'"%}
      ""
    {%endif%}
    ;;
    drill_fields: [set_detail*]
  }

  measure: dynamic_title_trend {
    type: max
    sql: 1 ;;
    html: <p style=
              "color: #412399;
              font-size:80%;
              text-align:left">
              {{ p_first_metric._parameter_value }} Performance Trend
              </p>;;
  }

  measure: dynamic_title_bar {
    type: max
    sql: 1;;
    html: <p style=
              "color: #412399;
              font-size:80%;
              text-align:left">
              {{_filters['device__operating_system']}} Performance Trend per Channel Grouping
      </p>;;
  }


  set: set_detail {
    fields: [device__browser,device__operating_system,geo_network__country,geo_network__region]
  }

#######

  dimension: channel_grouping {

    type: string
    sql: ${TABLE}.channelGrouping ;;
  }


  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: date_formatted {
    type: date
    datatype: date
    sql: PARSE_DATE("%Y%m%d", ${TABLE}.date) ;;
  }

  dimension_group: date_group {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${date_formatted} ;;
  }


  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
    drill_fields: [set_detail*]
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operatingSystem ;;
    group_label: "Device"
    group_item_label: "Operating System"
    drill_fields: [set_detail*]
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  ###Convert_summary

  measure: visitor_id_count {
    type: count_distinct
    sql:  ${TABLE}.fullVisitorId  ;;
  }

  ###
  dimension: geo_network__country {
    type: string
    sql: ${TABLE}.geoNetwork.country ;;
    group_label: "Geo Network"
    group_item_label: "Country"
  }


  dimension: geo_network__network_domain {
    type: string
    sql: ${TABLE}.geoNetwork.networkDomain ;;
    group_label: "Geo Network"
    group_item_label: "Network Domain"
  }

  dimension: geo_network__region {
    type: string
    sql: ${TABLE}.geoNetwork.region ;;
    group_label: "Geo Network"
    group_item_label: "Region"
  }

  dimension: hits {
    hidden: yes
    sql: ${TABLE}.hits ;;
  }

  dimension: totals__bounces {
    type: number
    sql: ${TABLE}.totals.bounces ;;
    group_label: "Totals"
    group_item_label: "Bounces"
  }

  dimension: totals__hits {
    type: number
    sql: ${TABLE}.totals.hits ;;
    group_label: "Totals"
    group_item_label: "Hits"
  }

  dimension: totals__new_visits {
    type: number
    sql: ${TABLE}.totals.newVisits ;;
    group_label: "Totals"
    group_item_label: "New Visits"
  }

  dimension: totals__pageviews {
    type: number
    sql: ${TABLE}.totals.pageviews ;;
    group_label: "Totals"
    group_item_label: "Pageviews"
  }

  dimension: totals__screenviews {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.screenviews ;;
    group_label: "Totals"
    group_item_label: "Screenviews"
  }

  dimension: totals__session_quality_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.sessionQualityDim ;;
    group_label: "Totals"
    group_item_label: "Session Quality Dim"
  }

  dimension: totals__time_on_screen {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.timeOnScreen ;;
    group_label: "Totals"
    group_item_label: "Time on Screen"
  }

  dimension: totals__time_on_site {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.timeOnSite ;;
    group_label: "Totals"
    group_item_label: "Time on Site"
  }

  dimension: totals__total_transaction_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.totalTransactionRevenue ;;
    group_label: "Totals"
    group_item_label: "Total Transaction Revenue"
  }

  dimension: totals__transaction_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.transactionRevenue ;;
    group_label: "Totals"
    group_item_label: "Transaction Revenue"
  }

  dimension: totals__transactions {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.transactions ;;
    group_label: "Totals"
    group_item_label: "Transactions"
  }

  dimension: totals__unique_screenviews {
    hidden: yes
    type: number
    sql: ${TABLE}.totals.uniqueScreenviews ;;
    group_label: "Totals"
    group_item_label: "Unique Screenviews"
  }

  dimension: totals__visits {
    type: number
    sql: ${TABLE}.totals.visits ;;
    group_label: "Totals"
    group_item_label: "Visits"
  }

  dimension: traffic_source__source {
    type: string
    sql: ${TABLE}.trafficSource.source ;;
    group_label: "Traffic Source"
    group_item_label: "Source"
  }

  dimension: user_id {
    hidden: yes
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }

  dimension: visit_number {
    hidden: yes
    type: number
    sql: ${TABLE}.visitNumber ;;
  }

  dimension: visit_start_time {
    hidden: yes
    type: number
    sql: ${TABLE}.visitStartTime ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitorId ;;
  }

# Aware_summary
  measure: total_hits{
    type : sum
    sql: ${TABLE}.totals.hits ;;
  }

  measure: total_pageviews{
    type : sum
    sql: ${TABLE}.totals.pageviews ;;
  }

  measure: pageviews_over_hits{
    type: number
    sql: ${total_pageviews}/${total_hits} ;;
    value_format: "0%"

  }



  # Engage_sumamry

  # dimension: new_visits {
  #  type: number
  #  sql: ${TABLE}.totals.newVisits ;;
  #}

  measure: total_visit {
    group_label: "Engage Summary"
    type: sum
    sql: ${TABLE}.totals.visits;;
  }

  measure: total_new_visits {
    group_label: "Engage Summary"
    type: sum
    sql: ${TABLE}.totals.newVisits ;;
#    filters: [new_visits: "not null"]
  }

  measure: new_percent {
    group_label: "Engage Summary"
    type: number
    sql: (${total_new_visits}/${total_visit}) ;;
    value_format: "0%"
  }

  ###Retain_summary
  measure: total_page_visits {
    group_label: "Retain Summary"
    type: sum
    sql: ${TABLE}.totals.visits ;;
  }

  measure : user_count {
    group_label: "Retain Summary"
    type :  count_distinct
    sql: ${TABLE}.visitId ;;
  }

  measure: avg_page_visit_per_user  {
    group_label: "Retain Summary"
    type : number
    sql: ${total_page_visits}/${user_count} ;;
    value_format: "0.0000%"
  }
}
