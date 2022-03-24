with client_details as ( 
    select *
    from {{ref('all_clients')}}
    inner join {{ref('all_address')}}
    on {{ref('all_address')}}.address_id = {{ref('all_clients')}}.address_id
    inner join {{ref('all_cities')}}
    on {{ref('all_cities')}}.city_id= {{ref('all_address')}}.city_id
    inner join {{ref('all_country')}}
    on {{ref('all_country')}}.country_id = {{ref('all_cities')}}.country_id
    inner join {{ref('all_stores')}}
    on {{ref('all_clients')}}.store_id = {{ref('all_stores')}}.store_id 
    )
select first_name, last_name, email, activebool as account_active_status, address, 
address2, district, postal_code, phone, city, country,  
from client_details