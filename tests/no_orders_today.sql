-- test to check if there are no orders today

select count(*) from num_orders_today
from {{ref('stg_orders')}}
where DATE(order_date) = CURRENT_DATE()
having count(*) > 0
