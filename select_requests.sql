SELECT title, year FROM Album
WHERE year = 2018;

SELECT name, duration FROM Track  
WHERE duration = (SELECT MAX(duration) FROM Track);

SELECT name, duration FROM Track
WHERE duration >='3:30'
ORDER BY duration ASC;

SELECT name FROM Collection
WHERE year BETWEEN 2018 and 2020;

SELECT nickname FROM Artist 
WHERE NOT nickname like '%% %%';

SELECT name FROM Track
WHERE name LIKE '%my%';

--количество исполнителей в каждом жанре

select g.title, count(a.nickname) from Genre as g
left join GenreArtist as ga on ga.genre_id = g.id
left join Artist as a on ga.artist_id = a.id
group by g.title 
order by count(a.id) DESC;

--количество треков, вошедших в альбомы 2019-2020 годов

select t.name, a.year from album as a
left join Track as t on t.album_id = a.id
where (a.year >= 2019) and (a.year <= 2020)

--средняя продолжительность треков по каждому альбому

select a.title, avg(t.duration) from album as a
left join track as t on t.album_id = a.id 
group by a.title
order by avg(t.duration)

--все исполнители, которые не выпустили альбомы в 2020 году

select distinct a.nickname from artist as a
where a.nickname not in (
select distinct a.nickname from artist as a
left join ArtistAlbum as aa on aa.artist_id = a.id
left join album as al on aa.album_id = al.id
where al.year =2020
)
order by a.nickname;

--названия сборников, в которых присутствует конкретный исполнитель

select distinct c.name from collection as c
left join collectiontrack as ct on c.id = ct.collection_id 
left join track as t on t.id = ct.track_id
left join album as a on a.id = t.album_id
left join artistalbum as aa on aa.album_id = aa.id
left join artist as ar on ar.id = aa.artist_id
where ar.nickname like '%%Oxxxymiron%%'
order by c.name;

--названия альбомов, в которых присутствуют исполнители более 1 жанра

select ar.nickname from album as a
left join artistalbum as aa on aa.id = aa.album_id
left join artist as ar on ar.id = aa.artist_id
left join genreartist as ga on ga.id = ga.artist_id 
left join genre as g on g.id = ga.genre_id
group by ar.nickname
having count(distinct g.title) > 1
order by ar.nickname;

--названия треков, которые не входят в сборники;

select t.name from track as t
left join collectiontrack as ct on t.id = ct.track_id 
where ct.track_id is null;

--исполнители, написавшего самый короткий трек по продолжительности

select ar.nickname, t.duration from track as t
left join album as a on a.id = t.album_id 
left join artistalbum as aa on aa.album_id = a.id 
left join artist as ar on ar.id = aa.artist_id 
group by ar.nickname, t.duration 
having t.duration = (select min(duration) from track)
order by ar.nickname

-- название альбомов, содержащих наименьшее кол-во треков

select distinct a.title from album as a
left join track as t on t.album_id = a.id 
where t.album_id in (
select album_id from track
group by album_id
having count(id) = (
select count(id) from track
group by album_id
order by count limit 1)
)
order by a.title
	