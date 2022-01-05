select sum(amount) as total_revenue
from {{ref('stg_payments')}}
where status = 'success'




/*
Below is the method that dbt recommended for implementing this analysis. Seems over complicated to recreate the payments table as a CTE in this analysis when you can just reference with jinja.


with payments as (
select * from {{ ref('stg_payments') }}
), 

aggregated as (
select 
sum(amount) as total_revenue
from payments
where status = 'success'
)

select * from aggregated
*/