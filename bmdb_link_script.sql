SELECT * FROM credits;

-- command tells "actor" and "credits" charts to link up, only show "Infinity War", which is movieID 2
SELECT firstName, lastName, gender, birthDate, role FROM actor JOIN credits ON credits.actorID = actor.id WHERE movieID = 2;

-- similar command tells "movie" and "credits" charts to link up, only show movies played by Benedict Cumberbatch
SELECT title, year, rating, director, role FROM movie JOIN credits ON credits.movieID = movie.ID WHERE actorID = 1;

-- more complicated command tells "actor", "credits" and "movie" charts to link up, and show 
-- that Scarlett Johansson has specifically played in these movies.
SELECT firstName, lastName, gender, birthDate, role, title, year, rating, director
	FROM actor JOIN credits ON credits.actorID = actor.id JOIN movie ON credits.movieID = movie.ID;
