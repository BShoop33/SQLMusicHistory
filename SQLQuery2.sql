/*
--Exercise 1
SELECT Id, Label
FROM Genre;
*/

/*
--Exercise 2
SELECT Id, ArtistName, YearEstablished
FROM Artist
ORDER BY ArtistName
*/

/*
--Exercise 3
--This join table could be read to say the following:
--1) Select the two columns listed (these come from the two tables being joined, which are Song and Artist in this example); 
--2) Set the Title column (represented by the tacoTitle variable) from the Song table as the left "home" column.
--3) Return in the ArtistName column (from the Artist table) the ArtistName entries whose cooresponding Id values in the 
--   Artist table match the ArtistId values cooresponding to Titles in the Song table.
--Note:  In a join tables operation, you can only specify a single table in the From field. The second table, and any alias
--you assign that table, is specific at the beginning of the Left Join field to the left of the On statement. In this example,
--the Song table is assigned an "s" alias in the From field, and the Artist table is assigned an "a" alias in the Left Join field.
SELECT Title, a.ArtistName
FROM Song s
LEFT JOIN Artist a ON s.ArtistId = a.id;
*/

--Exercise 4
/*
SELECT ArtistName
FROM Artist ar, Song s
WHERE ar.Id = ArtistId AND GenreId = 7;
*/

--Exercise 5
/*
SELECT ArtistName
FROM Artist ar, Song s
WHERE ar.Id = ArtistId AND GenreId = 2 OR ar.Id = ArtistId AND GenreID = 4;
*/

--Exercise 6
/*
SELECT a.Id
FROM Album a
LEFT JOIN Song s
ON a.Id = s.AlbumId
WHERE s.AlbumId IS NULL
*/

--Exercise 7
/*
INSERT INTO Artist (ArtistName, YearEstablished)
Values ('Adele', 1988);
*/

--Exercise 8
/*
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('21','01/24/2011',4812,'Columbia',28,15)
*/

--Exercise 9
/*
INSERT INTO Song (Title,SongLength,ReleaseDate,GenreId,ArtistId,AlbumId)
VALUES ('Rolling in the Deep',349,'01/24/2011',15,28,25),
	   ('Set Fire to the Rain',401,'01/24/2011',15,28,25),
	   ('Someone Like You',445,'01/24/2011',15,28,25)
*/

--Exercise 10
/*
SELECT al.Title, ar.ArtistName, s.Title
FROM Song s
LEFT JOIN Artist ar ON s.ArtistId = ar.id
LEFT JOIN Album al ON s.AlbumId = al.id
WHERE ar.ArtistName = 'Adele';
*/

--Exercise 11
/*
SELECT COUNT (AlbumId)
FROM Song
GROUP BY AlbumId
*/

--Exercise 12
/*
SELECT COUNT (ArtistId)
FROM Song
GROUP BY ArtistId
*/

--Exercise 13
/*
SELECT COUNT (GenreId)
FROM Song
GROUP BY GenreId
*/

--Exercise 14
/*
SELECT COUNT(DISTINCT al.Label) AS 'Labels', ar.ArtistName
FROM Album al
LEFT JOIN Artist ar ON al.ArtistId = ar.id
GROUP BY ArtistName 
HAVING COUNT(DISTINCT Label) > 1
*/

--Exercise 15
/*
SELECT al.Title, al.AlbumLength
FROM Album al
WHERE al.AlbumLength = (
	SELECT MAX(al.AlbumLength)
	FROM Album al
)
*/

--Exercise 16
/*
SELECT s.Title, s.SongLength
FROM Song s
WHERE s.SongLength = (
	SELECT MAX(s.SongLength)
	FROM Song s
)
*/

--Exercise 17
SELECT s.Title, s.SongLength, al.Title
FROM Song s
LEFT JOIN Album al ON s.AlbumId = al.Id
WHERE s.SongLength = (
	SELECT MAX(s.SongLength)
	FROM Song s
)