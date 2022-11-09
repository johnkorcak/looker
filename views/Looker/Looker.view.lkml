view: Looker {
    label: "Looker"
    sql_table_name: "Looker"."Looker";;
    dimension: Dates_Hierarchy_Dates_Level {
        label: " Dates Level"
        group_label: "Dates.Dates Hierarchy"
        type: date
        sql: ${TABLE}.`Dates Level`;;
    }

    dimension: Dates_Hierarchy_Year1 {
        label: "  Year"
        group_label: "Dates.Dates Hierarchy"
        type: date_year
        sql: ${TABLE}.`Year1`;;
        drill_fields: [Dates_Hierarchy_Dates_Level]
    }


    measure: m_orderquantity_sum {
        label: "Order Quantity"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}.`m_orderquantity_sum`;;
    }

    measure: m_salesamount_sum {
        label: "Sales Amount"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}.`m_salesamount_sum`;;
    }

}
