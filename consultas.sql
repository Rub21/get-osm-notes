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



COPY (select  id, open_comment from notes_detail where status='open'  order by date_created ASC) TO '/home/ruben/data/open-notes.csv' (format csv, delimiter '|')





#un usario abiro cantidad de notas en un mes y cuantas a cerrado


CREATE OR REPLACE FUNCTION notes_closed_user_month(c_user varchar(100), month varchar(50))
RETURNS  int
AS $$
DECLARE
	BEGIN
		RETURN( SELECT count(*) from notes_detail  where notes_detail.closed_user = c_user and status = 'closed' and substr(notes_detail.date_created::text, 0, 8) =month);
	END;
$$ LANGUAGE plpgsql;

select notes_closed_user_month('Marcussacapuces91' , '2013-12')

CREATE OR REPLACE FUNCTION notes_open_closed_user( c_user varchar(100),month varchar(50))
RETURNS  varchar(100)
AS $$
DECLARE
	_open integer;
	_closed integer;
	BEGIN
		_open= ( SELECT count(*) from notes_detail  where notes_detail.open_user = c_user  and substr(notes_detail.date_created::text, 0, 8) = month);
		_closed= ( SELECT count(*) from notes_detail  where notes_detail.closed_user = c_user  and substr(notes_detail.date_created::text, 0, 8) = month);

		return _open || '\' || _closed;
	END;
$$ LANGUAGE plpgsql;


2013-04 | 101
2013-05 | 352
2013-06 | 216
2013-07 | 241
2013-08 | 446
2013-09 | 789
2013-10 | 671
2013-11 | 488
2013-12 | 303
2014-01 | 458
2014-02 | 501
2014-03 | 305
2014-04 | 297
2014-05 | 302
2014-06 | 315
2014-07 | 27

select notes_open_closed_user('Rub21_nycbuildings' , '2014-04')

select closed_user ,notes_open_closed_user(closed_user , '2013-04') from notes_detail group by  closed_user



SELECT open_user, count( closed_user) as num_notes  from notes_detail  where time_open < 60 and  status = 'closed'  group by  open_user order by num_notes DESC;

SELECT count(*) from notes_detail  where closed_user = 'Marcussacapuces91' and status = 'closed' and substr(date_created::text, 0, 8) = '2013-12'


select closed_user, notes_closed_user_month(closed_user, '2013-12') as num_notes  from notes_detail group by  closed_user order by num_notes DESC;







#numero de notas por usuario en un mes:

SELECT open_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-05' group by  open_user order by num_notes DESC 
SELECT closed_user, count(*) as num_notes from notes_detail where substr(date_created::text, 0, 8) = '2013-05' and status= 'closed' group by  closed_user order by num_notes DESC 











#Nodos que fueron eliminados en menos de un hora
SELECT count(*) from notes_detail  where time_open < 3600
SELECT * from notes_detail  where time_open <3600



