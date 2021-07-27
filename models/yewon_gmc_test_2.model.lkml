connection: "hoiuh"

# include all the views
include: "/views/**/*.view"
#include: "/dashboard/*.dashboard.lookml"

datagroup: yewon_gmc_test_2_default_datagroup  {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  # max_cache_age: "1 hour"
  max_cache_age: "10 minutes"
}

persist_with: yewon_gmc_test_2_default_datagroup

explore: ga_sessions {

}
