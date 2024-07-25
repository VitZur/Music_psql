select g.name as genre , count (ag.artist_id) as artist_count
from genres  g
join artist_genre ag  on g.id = ag.genre_id 
group by g.name

select count(t.id) as track_count
from tracks t
join albums a on t.album_id = a.id
where a.release_year between  2019 and 2020;

select a.title as album , avg(t.duration) as avg_duration
from albums a  
join tracks t on a.id = t.album_id 
group by a.title 

select name
from artists 
where id not in (
	select artist_id
	from artist_album aa
	join albums a on aa.album_id = a.id
	where a.release_year = 2020
);

select distinct p.name
from playlist p 
join playlist_track pt on p.id = pt.playlist_id
join tracks t on pt.track_id = t.id
join albums a on t.album_id = a.id 
join artist_album aa on a.id = aa.album_id
where aa.artist_id = 2;