create table if not exists Genres (
	GenresID SERIAL PRIMARY KEY,
	name_genres VARCHAR(80)
);

create table if not exists Performers (
	PerformersID SERIAL PRIMARY KEY,
	name_performer VARCHAR(120)
);

create table if not exists PerformerGenre (
	performers_id INTEGER REFERENCES Performers(PerformersID),
	genre_id INTEGER REFERENCES Genres(GenresID),
	CONSTRAINT pk_perf_genre PRIMARY KEY (performers_id, genre_id)
);

create table if not exists Albums (
	AlbumsID SERIAL PRIMARY KEY,
	name_album VARCHAR(120),
	year_of_release DATE
);

create table if not exists PerformerAlbums (
	album_id INTEGER REFERENCES Albums(AlbumsID),
	perf_id INTEGER REFERENCES Performers(PerformersID),
	CONSTRAINT pk_performer_album  PRIMARY KEY (album_id, perf_id)
);

create table if not exists Track (
	Track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(120),
	duration INTEGER,
	alb_id SERIAL REFERENCES Albums(AlbumsID)
);

create table if not exists Compilations (
	CompilationsID SERIAL PRIMARY KEY,
	compilation_name VARCHAR(120),
	realise_date DATE
);

create table if not exists  CompilationsTrack (
	track_id INTEGER REFERENCES Track(Track_id),
	comp_id INTEGER REFERENCES Compilations(CompilationsID),
	CONSTRAINT pk_compilations_track  PRIMARY KEY (track_id, comp_id)
);