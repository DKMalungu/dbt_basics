SELECT country_id, country, last_update
	FROM {{source('movie_rentals', 'country')}}