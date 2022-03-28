SELECT city_id, city, country_id, last_update
	FROM {{source('movie_rentals', 'city')}}