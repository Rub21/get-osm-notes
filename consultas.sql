#created:
 SELECT count(*), substr(created_at::text, 0, 8) as month  FROM notes    group by  month order by month;

#OPEN
    SELECT count(*), substr(created_at::text, 0, 8) as month  FROM notes  where status = 'open' group by  month order by month;

#CLOSE
    SELECT count(*), substr(created_at::text, 0, 8) as month  FROM notes  where status = 'closed' group by  month order by month;



### Top 20 Users who closed notes

SELECT closed_user, count(*) as notes_closed from notes_detail  where status = 'closed' group by  closed_user order by notes_closed DESC;

### Top 20 Users who created notes

SELECT open_user, count(*) as num_notes from notes_detail   group by  open_user order by num_notes DESC;


#### Notes were opened and closed in less than an hour by month
SELECT  substr(date_created::text, 0, 8) as month,count(*)  from notes_detail  where time_open < 3600 and  status = 'closed'  group by  month order by month;

#### Notes were opened and closed in less than an minute by month
SELECT  substr(date_created::text, 0, 8) as month,count(*)  from notes_detail  where time_open < 60 and  status = 'closed'  group by  month order by month;


#### Notes were closed in less than an minute by users
SELECT closed_user,count(*) as num_notes  from notes_detail  where time_open < 60 and  status = 'closed'  group by  closed_user order by num_notes DESC;


#### Notes were closed in less than an hour by users
SELECT closed_user,count(*) as num_notes   from notes_detail  where time_open < 3600 and  status = 'closed'  group by  closed_user order by num_notes DESC;


# Statistics by month

#### 2013-04 -  Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-04' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-04' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2013-05 -  Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-05' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-05' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2013-06 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-06' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-06' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10

#### 2013-07 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-07' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-07' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2013-08 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-08' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-08' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10

#### 2013-09 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-09' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-09' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2013-10 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-10' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-10' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2013-11 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-11' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-11' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10



#### 2013-12 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-12' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-12' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10




#### 2014-01 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-01' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-01' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2014-02 - Top 10 users who opened and closed notes

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-02' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-02' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10


#### 2014-03 - Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-03' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-03' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10



#### 2014-04 - Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-04' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-04' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10



#### 2014-05 - Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-05' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-05' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10



#### 2014-06 - Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-06' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-06' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10



#### 2014-07 - Top 10 users who opened and closed notes
SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-07' group by  open_user order by num_notes DESC  limit 10
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2014-07' and status= 'closed' group by  closed_user order by num_notes DESC  limit 10





#### Notes were closed in less than an minute by users
SELECT closed_user,count(*) as num_notes  from notes_detail  where time_open < 3600 and  status = 'closed'  group by  closed_user order by num_notes DESC;

# User Radiotaxi , used a mecanicj wya for opend and close the notes

SELECT substr(date_created::text, 0, 11),  count(*)   from notes_detail  where closed_user = 'Radiotaxi' group by substr(date_created::text, 0,11)
SELECT substr(date_created::text, 0, 11),  count(*)   from notes_detail  where closed_user = 'Faustýn' group by substr(date_created::text, 0,11)
SELECT substr(date_created::text, 0, 11),  count(*)   from notes_detail  where closed_user = 'werwolf1961' group by substr(date_created::text, 0,11)
SELECT *   from notes_detail  where closed_user = 'Faustýn'
SELECT *   from notes_detail  where closed_user = 'werwolf1961'

#---------------------
SELECT *   from notes_detail  where closed_user = 'Arlas'

#3600
SELECT *   from notes_detail  where closed_user = 'JBacc1' and time_open < 3600 
SELECT *   from notes_detail  where closed_user = 'ToeBee' and time_open < 3600
SELECT *   from notes_detail  where closed_user = 'andrewpmk' and time_open < 60





select  id, open_comment from notes_detail where status='open'  order by date_created ASC






select regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail limit 100
select open_comment from notes_detail limit 100



COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open'  order by date_created ASC) TO '/home/ruben/data/open-notes.csv' (format csv, delimiter '|')


#ALTER TABLE notes_detail DROP COLUMN fix
ALTER TABLE notes_detail ADD COLUMN is_pos_fix boolean  

select * from notes_detail limit 100
UPDATE notes_detail set is_pos_fix=false

ALTER TABLE notes_detail drop COLUMN geo

#ALTER TABLE notes_detail ADD COLUMN geo geometry  

UPDATE notes_detail set geo='POINT('|| lon || ' ' || lat|| ')'

select * from notes_detail where id= 77


## CLONAR LA TABLA notes_detail A UN notes

#DROP TABLE notes;

  CREATE TABLE notes (LIKE notes_detail INCLUDING INDEXES);  

    INSERT INTO notes
         SELECT *
           FROM notes_detail
           WHERE status='open'

           select * from notes limit 100;
=========================================================================================================
#actulizamos todos los comentarios

UPDATE notes set  open_comment= regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' )


=============================================================================================================

select * from notes limit 100

#Toda la revision de las notas que ueden ser arregladas
select  id, open_comment from notes where is_pos_fix=true 


# FUNCION QUE VA A FERIFICAR SI HAY UN PALABRA EN EL COMENTARIO
CREATE OR REPLACE FUNCTION verifica_comentario(_comment text, _p varchar(100))
RETURNS  int
AS $$
DECLARE
	BEGIN
		RETURN(SELECT character_length((regexp_matches(lower(_comment), '('|| _p ||')'))[1]));
	END;
$$ LANGUAGE plpgsql;

--select verifica_comentario('Hotel & Restaurant - Strandhaus am Inselsee','hotel')

# HAYANDO HOTELES
--agregamos la comuna para verificar si es un hotel

ALTER TABLE notes ADD COLUMN is_hotel boolean  
UPDATE notes set is_hotel=false
-- actualiza todos los comentario con hoteles
UPDATE notes set is_hotel=true where verifica_comentario(open_comment,'hotel')>0

select id, open_comment from notes where is_hotel=true

--select  id, open_comment,character_length((regexp_matches(lower(open_comment), '(hotel)'))[1]) from notes

# HAYANDO BANCOS OR BANK

ALTER TABLE notes ADD COLUMN is_bank boolean  
UPDATE notes set is_bank=false

-- actualiza todos los comentario con bancos
UPDATE notes set is_bank=true where verifica_comentario(open_comment,'banco')>0 or verifica_comentario(open_comment,'bank')>0 



# HAYANDO RESTAURANT

ALTER TABLE notes ADD COLUMN is_restaurant boolean  
UPDATE notes set is_restaurant=false

-- actualiza todos los comentario con bancos
UPDATE notes set is_restaurant=true where verifica_comentario(open_comment,'restaurant')>0 or verifica_comentario(open_comment,'restaurante')>0  or verifica_comentario(open_comment,'restaurace')>0 




# HAYANDO TEST

ALTER TABLE notes ADD COLUMN is_test boolean  
UPDATE notes set is_test=false

-- actualiza todos los comentario con bancos
UPDATE notes set is_test=true where verifica_comentario(open_comment,'test')>0 or verifica_comentario(open_comment,'prueba')>0







=======================================================NOTES DETAIL====================================================
#Agregamos todos los puntos a notes_detail


#update notes_detail with notes "is_pos_fix"
UPDATE notes_detail
SET is_pos_fix = notes.is_pos_fix
FROM notes
WHERE notes.id = notes_detail.id

--select count(*) from notes_detail where is_pos_fix=true
COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open' and is_pos_fix=true  order by date_created ASC) TO '/home/ruben/data/notes_is_pos_fix.md' (format csv, delimiter '|')


#update notes_detail with notes "is_hotel"


ALTER TABLE notes_detail ADD COLUMN is_hotel boolean  
UPDATE notes_detail set is_hotel=false

--select count(*) from notes_detail where is_hotel=true

UPDATE notes_detail
SET is_hotel = notes.is_hotel
FROM notes
WHERE notes.id = notes_detail.id



COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open' and is_hotel=true  order by date_created ASC) TO '/home/ruben/data/notes_hotel.md' (format csv, delimiter '|')
#update notes_detail with notes "is_bank"


ALTER TABLE notes_detail ADD COLUMN is_bank boolean  
UPDATE notes_detail set is_bank=false


--select count(*) from notes_detail where is_bank=true


UPDATE notes_detail
SET is_bank = notes.is_bank
FROM notes
WHERE notes.id = notes_detail.id

select * from notes_detail limit 100

COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open' and is_bank=true  order by date_created ASC) TO '/home/ruben/data/notes_bank.md' (format csv, delimiter '|')





#update notes_detail with notes "is_bank"


ALTER TABLE notes_detail ADD COLUMN is_restaurant boolean  
UPDATE notes_detail set is_restaurant=false


--select count(*) from notes_detail where is_restaurant=true


UPDATE notes_detail
SET is_restaurant = notes.is_restaurant
FROM notes
WHERE notes.id = notes_detail.id

select * from notes_detail limit 100

COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open' and is_restaurant=true  order by date_created ASC) TO '/home/ruben/data/notes_restaurants.md' (format csv, delimiter '|')



#update notes_detail with notes "TEST"


ALTER TABLE notes_detail ADD COLUMN is_test boolean  
UPDATE notes_detail set is_test=false


--select count(*) from notes_detail where is_restaurant=true


UPDATE notes_detail
SET is_test = notes.is_test
FROM notes
WHERE notes.id = notes_detail.id

select * from notes_detail limit 100

COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open' and is_test=true  order by date_created ASC) TO '/home/ruben/data/notes_test.md' (format csv, delimiter '|')




#tipo "Moved from OSB ID:

COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', regexp_replace(open_comment, E'[\\n\\r]+', ' ', 'g' ) from notes_detail where status='open' and verifica_comentario(open_comment,'moved from osb')>0  order by date_created ASC) TO '/home/ruben/data/moved_from_osb_id.md' (format csv, delimiter '|')



#notes Direcion:

ALTER TABLE notes_detail ADD COLUMN is_direction boolean  
UPDATE notes_detail set is_direction=false



UPDATE notes_detail set is_direction=true where substr(open_comment,0,3)='R.' or substr(open_comment,0,4)='TV.' or  substr(lower(open_comment),0,4)='av.'

select * from notes_detail where substr(open_comment,0,4)='TV.'
select * from notes_detail where substr(lower(open_comment),0,4)='av.'




