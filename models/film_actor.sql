select *
from {{ref('all_film_actor')}}
inner join {{ref('all_films')}}
on {{ref('all_film_actor')}}.film_id = {{ref('all_films')}}.film_id 
inner join {{ref('all_actors')}}
on {{ref('all_film_actor')}}.actor_id  = {{ref('all_actors')}}.actor_id
