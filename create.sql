CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL	
);

create table if not exists Performer (
	id SERIAL primary key,
	name VARCHAR(60) not NULL
);

create table if not exists PerformerGenres (
	performer_id INTEGER references Performer(id),
	genre_id integer references Genre(id),
	constraint pk primary key (performer_id, genre_id)
);

create table if not exists Album (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	"year" INTEGER not null CHECK ("year" > 2000)
);

create table if not exists PerformerAlbums (
	album_id INTEGER references Album(id),
	performer_id INTEGER references Performer(id),
	constraint pk primary key (album_id, performer_id)
);

create table if not exists Track (
	id SERIAL primary key,
	album_id INTEGER references Album(id),
	name VARCHAR(60) not null,
	duration integer not null CHECK (duration > 180) 
);

create table if not exists Collection (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	"year" INTEGER not null CHECK ("year" > 2000)
);

create table if not exists TrackCollection (
	collection_id INTEGER references Collection(id),
	track_id INTEGER references Track(id),
	constraint lk primary key (collection_id, track_id)
);
