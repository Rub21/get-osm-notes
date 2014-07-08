 http://api.openstreetmap.org/api/0.6/notes?bbox=left,bottom,right,top

 select * from grid4 where "left"=-0.0000000000000000 and bottom = 52.0000000000000000
  SELECT gid, "left",top as bottom  , "right", bottom as top  , geom  FROM grid4 where "left"=-0.0000000000000000 and bottom = 52.0000000000000000


  SELECT gid, "left",top as bottom  , "right", bottom as top  , geom  FROM grid4
  http://api.openstreetmap.org/api/0.6/notes?bbox=0.0000000000000000,48.0000000000000000,4.0000000000000000,52.0000000000000000
  http://api.openstreetmap.org/api/0.6/notes.json?bbox=0.0000000000000000,48.0000000000000000,4.0000000000000000,52.0000000000000000

##############################################################33tablas

CREATE TABLE notes (
    id integer NOT NULL,
    latitude decimal NOT NULL,
    longitude decimal NOT NULL,
    status varchar(20),
    created_at timestamp,    
    closed_at timestamp 
);


CREATE TABLE notes_detail(
    id integer NOT NULL,
    lat decimal NOT NULL,
    lon decimal NOT NULL,   
    date_created  timestamp,
    date_closed  timestamp,
    status varchar(20),
    open_user varchar(100),
    closed_user varchar(100),
    open_comment text,
    closed_commet text,
    time_open integer
);





    
select * from notes 

select count(*) from notes 
select count(*) from notes_detail
select * from notes_detail

select * from notes limit 100
#drop table notes_detail
#delete from notes
















    