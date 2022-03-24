Select language_id, name, last_update 
From {{source('movie_rentals', 'language')}}