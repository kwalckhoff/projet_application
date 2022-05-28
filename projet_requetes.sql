select sum(Price), TO_CHAR(Created_At::timestamp, 'YYYY') as annee
from scooter
group by annee;

select sum(Price), TO_CHAR(Created_At::timestamp, 'YYYY-MM') as mois_annee
from scooter
group by mois_annee
order by mois_annee asc;

select avg(Duration), TO_CHAR(Created_At::timestamp, 'YYYY') as annee
from scooter
group by annee;

select avg(Duration), TO_CHAR(Created_At::timestamp, 'YYYY-MM') as mois_annee
from scooter
group by mois_annee
order by mois_annee asc;


select sum(Price),
	case 
		when extract(dow from Created_At::timestamp)=0 then 'lundi'
		when extract(dow from Created_At::timestamp)=1 then 'mardi'
		when extract(dow from Created_At::timestamp)=2 then 'mercredi'
		when extract(dow from Created_At::timestamp)=3 then 'jeudi'
		when extract(dow from Created_At::timestamp)=4 then 'vendredi'
		when extract(dow from Created_At::timestamp)=5 then 'samedi'
		when extract(dow from Created_At::timestamp)=6 then 'dimanche'
		else null
		end
from scooter
group by extract(dow from Created_At::timestamp);

select avg(Duration),
	case 
		when extract(dow from Created_At::timestamp)=0 then 'lundi'
		when extract(dow from Created_At::timestamp)=1 then 'mardi'
		when extract(dow from Created_At::timestamp)=2 then 'mercredi'
		when extract(dow from Created_At::timestamp)=3 then 'jeudi'
		when extract(dow from Created_At::timestamp)=4 then 'vendredi'
		when extract(dow from Created_At::timestamp)=5 then 'samedi'
		when extract(dow from Created_At::timestamp)=6 then 'dimanche'
		else null
		end
from scooter
group by extract(dow from Created_At::timestamp);


select sum(Price), City_ID 
from scooter
group by City_ID
order by sum(Price) desc;


select count(distinct(User_ID)), City_ID 
from scooter 
group by City_ID
order by count(distinct(User_ID)) desc;


with first_trip_per_user as (
    select user_id, date(min(created_at)) as first_trip_day from projet group by user_id 
)
select count(*), 
    first_trip_day
from first_trip_per_user
group by date(first_trip_day) 


select count(distinct(vehicle_id)) from scooter;

select count(*) from scooter;

select count(distinct(user_id)) from scooter;
