select title,duration
from tracks 
order by duration desc 
limit 1;

select title 
from tracks 
where duration >= 3.5 * 60;

select name
from playlist 
where release_year between 2018 and 2020;

select name
from artists 
where name not like '% %';

SELECT DISTINCT word
FROM (
    SELECT regexp_split_to_table(lower(title), '\s+') AS word
    FROM tracks
) AS words
WHERE word LIKE '%мой%' OR word LIKE '%my%';

