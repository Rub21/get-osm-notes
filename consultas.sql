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



COPY (select '[',id,'](http://www.openstreetmap.org/note/|', id, '#map=19/|',lat,'/|',lon ,')', open_comment from notes_detail where status='open'  order by date_created ASC) TO '/home/ruben/data/open-notes.csv' (format csv, delimiter '|')







