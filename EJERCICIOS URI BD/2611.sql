SELECT id,name 
FROM Movies 
WHERE id_genres = (SELECT id FROM Genres WHERE description = 'Action')