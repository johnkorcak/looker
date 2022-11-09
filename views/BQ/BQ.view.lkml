view: BQ {
    label: "BQ"
    sql_table_name: "BQ"."BQ";;
    dimension: Dim_Customer_Hierarchy_Dim_Customer_Level {
        label: "Dim Customer Level"
        type: number
        sql: ${TABLE}.`Dim Customer Level`;;
    }

    dimension: d_EnglishOccupation {
        label: "English Occupation"
        type: string
        sql: ${TABLE}.`d_EnglishOccupation`;;
    }


    measure: m_SalesAmount_sum {
        label: "Sales Amount"
        group_label: "Metrics"
        type: sum
        sql: ${TABLE}.`m_SalesAmount_sum`;;
    }

}
