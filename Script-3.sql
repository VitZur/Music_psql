select a.title
from albums a
join artist_album aa on a.id = aa.album_id 
join artist_genre ag on aa.artist_id = ag.artist_id 
group by a.id,a.title 
having count(distinct ag.genre_id)>1;


select t.title
from tracks t
left join playlist_track pt on t.id = pt.track_id 
where pt.track_id is null;

SELECT ar.name
FROM artists ar
JOIN artist_album aa ON ar.id = aa.artist_id
JOIN albums a ON aa.album_id = a.id
JOIN tracks t ON a.id = t.album_id
WHERE t.duration = (
    SELECT MIN(duration) FROM tracks
);

select a.title 
from albums a
join tracks t on a.id = t.album_id 
group by a.title,a.id 
having count(t.id) = (
	select min(track_count)
	from (
			select count(t.id) as track_count
			from albums a
			join tracks t on a.id = t.album_id 
			group by a.id
		) subquery
);
