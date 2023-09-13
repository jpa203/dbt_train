with

customers as (

    select * from {{ source('tech_store', 'customer') }}

),

final as (

    select
        id as customer_id,
        name as customer_name,
        cityid as city_id,
        mainsalesrepid as main_employee_id,
        createdatetime as created_at,
        updatedatetime as updated_at,
        CASE 
            WHEN active = 'yes' then true else false end as is_active
    
    from customers

)

select * from final