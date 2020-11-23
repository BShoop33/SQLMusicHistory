/*
--Exercise 1
Select Id, Label
From Genre;
*/

/*
--Exercise 2
Select Id, ArtistName, YearEstablished
From Artist
Order By ArtistName
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
Select Title, a.ArtistName
From Song s
Left Join Artist a on s.ArtistId = a.id;
*/

--Exercise 4
Select ArtistName
From Artist ar, Song s
Where ar.Id = ArtistId AND GenreId = 7;