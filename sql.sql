CREATE TABLE notes (
    id integer NOT NULL,
    latitude decimal NOT NULL,
    longitude decimal NOT NULL,
    status varchar(20),
    created_at timestamp,    
    closed_at timestamp 
);

select count(*) from notes
drop table notes