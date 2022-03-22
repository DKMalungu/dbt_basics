select *
from {{ref('all_film_actor')}}
inner join {{ref('all_films')}}
on {{ref('all_film_actor')}}.code = {{ref('all_films')}}