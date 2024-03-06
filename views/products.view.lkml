view: products {
  sql_table_name: `@{project_connection}.products`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {

    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: brand_display {
    view_label: "Item"
    type: string
    sql: ${brand} ;;
    html: {% if brand._value == "Gap" %} <img src="https://i.ibb.co/t8BH0H9/6596980-preview.png" width="135px" height="auto">
          {% elsif brand._value == 'Calvin Klein' %} <img src="https://i.ibb.co/P6b0MtJ/webb-banks-brand-titos-handmade-vodka2a.png"  width="135px" height="auto">
          {% elsif brand._value == 'Coach' %} <img src="https://i.ibb.co/W6HF88z/download.png" width="135px" height="auto">
          {% elsif brand._value == '180s' %} <img src="https://i.ibb.co/tLWGc8n/looker-logo.png"  width="135px" height="auto">
          {% elsif brand._value == 'Hawkeye' %} <img src="https://i.ibb.co/R6Gt3YG/10932-1.png" width="135px" height="auto">
          {% elsif brand._value == 'Hennessy' %} <img src="https://i.ibb.co/bQQtJvQ/hennessy-logo-black-and-white.png" width="135px" height="auto">
          {% elsif brand._value == 'Jack Daniels' %} <img src="https://i.ibb.co/z7BXsxZ/jack-daniels-logo-png-1.png"  width="135px" height="auto">
          {% elsif brand._value == 'Smirnoff' %} <img src="https://i.ibb.co/hc6VwKx/6779046-preview.png"  width="135px" height="auto">
          {% else %} {{value}}
          {% endif %} ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    label: "price"
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    label: "Count Products"
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      distribution_centers.name,
      distribution_centers.id,
      order_items.count,
      inventory_items.count
    ]
  }
}
