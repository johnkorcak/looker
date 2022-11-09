connection: "jk_se_demo"

datagroup: jk_se_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jk_se_demo_default_datagroup
