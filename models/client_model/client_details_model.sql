with client_details(select *
from {{ref('all_clients')}}
inner join {{ref('all_address')}}
on {{ref('all_address')}}.address_id = {{ref('all_clients')}}.address_id
inner join {{ref('all_cities')}}
on {{ref('all_cities')}}.city_id= {{ref('all_address')}}.city_id
inner join {{ref('all_country')}}
on {{ref('all_country')}}.country_id = {{ref('all_cities')}}.county_id
inner join {{ref('all_store')}}
on {{ref('all_clients')}}.store_id = {{ref('all_store')}})
select * from client_details