{{config(allias='staff_details')}}

select * from {{ref('all_staff')}}
inner join {{ref('all_address')}}
on {{ref('all_address')}}.address_id = {{ref('all_staff')}}.address_id
inner join {{ref('all_cities')}}
on {{ref('all_cities')}}.city_id = {{ref('all_address')}}.city_id
inner join {{ref('all_country')}}
on {{ref('all_country')}}.country_id = {{ref('all_cities')}}.country_id