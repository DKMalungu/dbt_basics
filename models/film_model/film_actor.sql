{{
    config(
        sort="title"
    )
}}
with film_actor as (select *
from {{ref('all_film_actor')}}
inner join {{ref('all_films')}}
on {{ref('all_film_actor')}}.film_id = {{ref('all_films')}}.film_id 
inner join {{ref('all_actors')}}
on {{ref('all_film_actor')}}.actor_id  = {{ref('all_actors')}}.actor_id
inner join {{ref('all_languages')}}
on {{ref('all_languages')}}.language_id =  {{ref('all_films')}}.language_id)
select
 first_name, last_name, title, film_actor.description, release_year, film_actor.name as film_language,rental_duration, rental_rate, 
 length, replacement_cost, rating, special_features, fulltext
 from film_actor

