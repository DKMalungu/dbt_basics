SELECT actor_id, film_id, last_update
	FROM {{source('movie_rentals','film_actor')}}