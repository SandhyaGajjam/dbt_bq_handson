SELECT
  o.order_id,
  o.order_date,
  c.customer_id,
  c.customer_name
FROM
    raw.orders o
join {{ ref ("stg_customers") }} c on o.customer_id=c.customer_id
    
    
