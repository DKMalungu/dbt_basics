{{config(alias='store_details')}}
with store_details as (select * from {{ref('all_stores')}}
inner join {{ref('all_staff')}}
on {{ref('all_staff')}}.staff_id = {{ref('all_stores')}}.manager_staff_id
inner join {{ref('all_address')}}
on {{ref('all_address')}}.address_id = {{ref('all_stores')}}.address_id
inner join {{ref('all_cities')}}
on {{ref('all_cities')}}.city_id = {{ref('all_address')}}.city_id
inner join {{ref('all_country')}}
on {{ref('all_country')}}.country_id = {{ref('all_cities')}}.country_id)
select first_name, last_name, email, address, address2, district, postal_code, phone, city, country
from store_details