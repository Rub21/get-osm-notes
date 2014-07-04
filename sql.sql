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
select * from notes
#drop table notes
#delete from notes