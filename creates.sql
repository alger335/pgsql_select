create table if not exists Genre (
	id serial primary key,
	name varchar(40) not null unique
);

create table if not exists Artist (
	id serial primary key,
	name  varchar (80) not null unique
);

create table if not exists GenreArtists (
	id serial primary key,
	genre_id  integer not null references Genre(id),
	artist_id integer not null references Artist(id)
);

create table if not exists Album (
	id serial primary key,
	name  varchar (80) not null,
	year integer check(year > 1700)
);

create table if not exists AlbumArtists (
	id serial primary key,
	album_id  integer not null references Album(id),
	artist_id integer not null references Artist(id)
);

create table if not exists Track (
	id serial primary key,
	name  varchar (80) not null,
	duration integer,
	album_id integer references Album(id)
);

create table if not exists Collection (
	id serial primary key,
	name  varchar (80) not null,
	year integer check(year > 1700)
);

create table if not exists TracksCollections (
	id serial primary key,
	track_id  integer not null references Track(id),
	collection_id integer not null references Collection(id)
);







