view: ga_sessions {
  sql_table_name: `GMC_PoC.ga_sessions`
    ;;

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


  dimension: device__browser {
    type: string
    sql: ${TABLE}.device.browser ;;
    group_label: "Device"
    group_item_label: "Browser"
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operatingSystem ;;
    group_label: "Device"
    group_item_label: "Operating System"
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
    type: sum
    sql: ${TABLE}.totals.visits;;
  }

  measure: total_new_visits {
    type: sum
    sql: ${TABLE}.totals.newVisits ;;
#    filters: [new_visits: "not null"]
  }

  measure: new_percent {
    type: number
    sql: (${total_new_visits}/${total_visit}) ;;
    value_format: "0%"
  }

  ###Retain_summary
  measure: total_page_visits {
    type: sum
    sql: ${TABLE}.totals.visits ;;
  }

  measure : user_count {
    type :  count_distinct
    sql: ${TABLE}.visitId ;;
  }

  measure: avg_page_visit_per_user  {
    type : number
    sql: ${total_page_visits}/${user_count} ;;
    value_format: "0.0000%"
  }
}

view: ga_sessions__hits {

  dimension: data_source {
    type: string
    sql: ${TABLE}.dataSource ;;
  }

  dimension: e_commerce_action__action_type {
    type: string
    sql: ${TABLE}.eCommerceAction.action_type ;;
    group_label: "E Commerce Action"
    group_item_label: "Action Type"
  }

  dimension: e_commerce_action__option {
    hidden: yes
    type: string
    sql: ${TABLE}.eCommerceAction.option ;;
    group_label: "E Commerce Action"
    group_item_label: "Option"
  }

  dimension: e_commerce_action__step {
    hidden: yes
    type: number
    sql: ${TABLE}.eCommerceAction.step ;;
    group_label: "E Commerce Action"
    group_item_label: "Step"
  }

  dimension: hit_number {
    hidden: yes
    type: number
    sql: ${TABLE}.hitNumber ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: minute {
    type: number
    sql: ${TABLE}.minute ;;
  }

  dimension: product {
    hidden: yes
    sql: ${TABLE}.product ;;
  }

  dimension: promotion {
    hidden: yes
    sql: ${TABLE}.promotion ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }


  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: ga_sessions__hits__product {
  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: custom_metrics {
    hidden: yes
    sql: ${TABLE}.customMetrics ;;
  }

  dimension: is_click {
    hidden: yes
    type: yesno
    sql: ${TABLE}.isClick ;;
  }

  dimension: is_impression {
    hidden: yes
    type: yesno
    sql: ${TABLE}.isImpression ;;
  }

  dimension: local_product_price {
    hidden: yes
    type: number
    sql: ${TABLE}.localProductPrice ;;
  }

  dimension: local_product_refund_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.localProductRefundAmount ;;
  }

  dimension: local_product_revenue {
    type: number
    sql: ${TABLE}.localProductRevenue ;;
  }

### Convert_Summary
  measure: product_revenue_measure {
    type: sum
    sql: ${local_product_revenue};;
    description: "the number of tims and ad has been searved"
  }
###
}
