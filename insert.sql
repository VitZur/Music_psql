-- Populate genres
INSERT INTO genres (id, name) VALUES 
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz');

-- Populate artists
INSERT INTO artists (id, name) VALUES 
(1, 'Queen'),
(2, 'Adele'),
(3, 'Miles');

-- Populate albums
INSERT INTO albums (id, title, release_year) VALUES 
(1, 'A Night at the Opera', 1975),
(2, '25', 2015),
(3, 'Kind of Blue', 1959),
(4, 'Future Nostalgia', 2020);

-- Populate artist_album
INSERT INTO artist_album (artist_id, album_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(2, 4);

-- Populate artist_genre
INSERT INTO artist_genre (artist_id, genre_id) VALUES 
(1, 1),
(2, 2),
(3, 3);

-- Populate tracks
INSERT INTO tracks (id, title, duration, album_id) VALUES 
(1, 'Bohemian Rhapsody', 354, 1),
(2, 'Rolling in the Deep', 228, 2),
(3, 'So What', 561, 3),
(4, 'Don’t Start Now', 183, 4),
(5, 'My Song', 245, 3);

-- Populate playlists
INSERT INTO playlists (id, name, release_year) VALUES 
(1, 'Greatest Hits', 2019),
(2, 'Chill Vibes', 2020);

-- Populate playlist_track
INSERT INTO playlist_track (playlist_id, track_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4);
