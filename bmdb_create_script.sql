
DROP database IF EXISTS bmdb_hall;
CREATE database bmdb_hall;
USE bmdb_hall;

CREATE table actor (
	id			int			primary key auto_increment,
    firstName	varchar(25)	not null,
    lastName	varchar(25) not null,
    gender		varchar(6)	not null,
    birthDate	date		not null
    );

CREATE table movie (
	id			int			primary key auto_increment,
    title		varchar(50)	not null,
    year		int			not null,
    rating		varchar(5)	not null,
    director	varchar(50)	not null
    );
    
CREATE table credits ( 
	id			int			primary key auto_increment,
    actorID		int			not null,
    movieID		int			not null,
    role		varchar(25)	not null,
    FOREIGN KEY (actorID) REFERENCES actor(id),
    FOREIGN KEY (movieID) REFERENCES movie(id),
    CONSTRAINT act_mov UNIQUE (actorID, movieID)
    );

INSERT INTO actor (firstName, lastName, gender, birthDate)
	VALUES 	('Benedict', 'Cumberbatch', 'male', '1976-07-19'),
			('Scarlett', 'Johansson', 'female', '1984-11-22');    

INSERT INTO movie (title, year, rating, director)
	VALUES 	('1917', 2020, 'R', 'Sam Mendes'),
			('Avengers: Infinity War', 2018, 'PG-13', 'Anothony and Joe Russo'),
            ('JoJo Rabbit', 2019, 'PG-13', 'Taika Waititi');

INSERT INTO credits (actorID, movieId, role)
	VALUES 	(1, 1, 'Colonel Makenzie'),
			(1, 2, 'Dr. Strange'),
            (2, 2, 'Black Widow'),
            (2, 3, 'Rosie');