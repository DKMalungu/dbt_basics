SELECT store_id, manager_staff_id, address_id, last_update
	FROM {{source('movie_rentals', 'store')}}