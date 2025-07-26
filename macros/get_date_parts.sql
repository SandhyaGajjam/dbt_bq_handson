{% macro get_date_parts(order_date) %}

  ( SELECT struct (
      {{ order_date }} AS Original_date,
      EXTRACT(YEAR FROM {{ order_date }}) AS year,
      EXTRACT(MONTH FROM {{ order_date }}) AS month,
      EXTRACT(DAY FROM {{ order_date }}) AS day,
      EXTRACT(DAYOFWEEK FROM {{ order_date }}) AS day_of_month,
      EXTRACT(DAYOFYEAR FROM {{ order_date }}) AS day_of_year,
      EXTRACT(WEEK FROM {{ order_date }}) AS week,
      EXTRACT(QUARTER FROM {{ order_date }}) AS extract_date
  )
  {% endmacro %}
  
