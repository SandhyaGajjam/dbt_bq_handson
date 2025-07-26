{% snapshot orders_sapshot_timestamp %}

  {{
      config(
         target_schema = 'snapshots',
         startegy='timestamp',
         unique_key='id',
         updated_at='updated_at',
        )
  }}

Select * from {{ source('jaffle_shop','orders') }}


{% endshanpshot %}
