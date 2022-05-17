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

select Status, avg(Duration)
from scooter 
group by Status
order by avg(Duration) desc;

select Status, sum(Price)
from scooter 
group by Status
order by sum(price) desc;

