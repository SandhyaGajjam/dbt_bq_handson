{% snapshot orders_snapshot_check %}

  {{
      config(
         target_schema='snapshots',
         strategy='check',
         unique_key='id',
         check_cols=['status','is_cancelled'],
       )
  }}

Select * from {{ source('jaffle_shop','orders') }}

{% endshapshot %}
