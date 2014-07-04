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

select * from notes 
substring(osm_timestamp from 1 for 4)


select count(*) from notes 
select * from notes limit 100
#drop table notes
#delete from notes
########################################################consultas

    select count(*) from notes where status = 'open'
    select count(*) from notes where status = 'closed'

    select count(*) from grid4

#created:
 SELECT count(*), substr(created_at::text, 0, 8) as month  FROM notes    group by  month order by month;

#OPEN
    SELECT count(*), substr(created_at::text, 0, 8) as month  FROM notes  where status = 'open' group by  month order by month;

#CLOSE
    SELECT count(*), substr(created_at::text, 0, 8) as month  FROM notes  where status = 'closed' group by  month order by month;