select staff_id, first_name, last_name, address_id, email, store_id, active, last_update
from {{source('movie_rentals', 'staff')}}