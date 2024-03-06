explore: users_extend {}
include: "/views/users.view.lkml"

view: users_extend {
  extends: [users]
  fields_hidden_by_default: yes

  dimension: age_extend {
    label: "age number- extend"
    type: number
    sql: ${TABLE}.age ;;
    hidden: no
    description: "testing advanced deploy mode - extend"
  }
  }
