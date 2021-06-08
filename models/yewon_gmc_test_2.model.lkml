connection: "hoiuh"

# include all the views
include: "/views/**/*.view"
include: "/dashboard/*.dashboard.lookml"

datagroup: yewon_gmc_test_2_default_datagroup  {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  # max_cache_age: "1 hour"
  max_cache_age: "10 minutes"
}

persist_with: yewon_gmc_test_2_default_datagroup

explore: ga_sessions {
  join: ga_sessions__hits {
    view_label: "Ga Sessions: Hits"
    sql: LEFT JOIN UNNEST(${ga_sessions.hits}) as ga_sessions__hits ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__product {
    view_label: "Ga Sessions: Hits Product"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.product}) as ga_sessions__hits__product ;;
    relationship: one_to_many
  }

}
