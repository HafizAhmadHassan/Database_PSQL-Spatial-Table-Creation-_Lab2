drop table if exists psycho_db.Fiume_geo 
create table psycho_db.Fiume_geo(
	gid INTEGER PRIMARY KEY,
	idro_id INTEGER NOT NULL

);


ALTER TABLE psycho_db.Fiume_geo ADD COLUMN geom geometry(MULTILINESTRING,-1);


SELECT AddGeometryColumn('psycho_db','Fiume_geo','geom',-1,'MULTILINESTRING',2);

--Functions for accessing the content of a geometric
--attribute
insert into psycho_db.Fiume_geo SELECT gid, idro_id, geom FROM psycho_db.fiumi_shp



drop table if exists psycho_db.Lago_geo 
create table psycho_db.Lago_geo(
	gid INTEGER PRIMARY KEY,
	Nome VARCHAR(200)

);


ALTER TABLE psycho_db.Lago_geo ADD COLUMN geom geometry(MULTIPOLYGON,-1);
insert into psycho_db.Lago_geo SELECT gid, nome, geom FROM psycho_db.laghi_shp


