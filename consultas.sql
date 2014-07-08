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



# users who closed the notes

SELECT closed_user, count(*) as notes_closed from notes_detail  where status = 'closed' group by  closed_user order by notes_closed DESC;

#Nodos que fueron eliminados en menos de un minuto
SELECT count(*) from notes_detail  where time_open < 60

#Numero de Nodos que fueron eliminados en menos de 1 hora

SELECT  substr(date_created::text, 0, 8) as month,count(*)  from notes_detail  where time_open < 60 and  status = 'closed'  group by  month order by month;

##Nodos que fueron eliminados en menos de 1 hora por usuarios

SELECT count(*) as num_notes, closed_user  from notes_detail  where time_open < 60 and  status = 'closed'  group by  closed_user order by num_notes DESC;


#un usario abiro cantidad de notas en un mes y cuantas a cerrado


CREATE OR REPLACE FUNCTION num_closed_user(closed_user varchar(10), month varchar(50))
RETURNS  int
AS $$
DECLARE
	BEGIN
		RETURN( SELECT count(*) from notes_detail  where closed_user = closed_user and status = 'closed' and substr(date_created::text, 0, 8) =month);
	END;
$$ LANGUAGE plpgsql;



SELECT open_user, closed_user  from notes_detail  where time_open < 60 and  status = 'closed'  group by  closed_user order by num_notes DESC;

SELECT count(*) from notes_detail  where closed_user = 'Marcussacapuces91' and status = 'closed' and substr(date_created::text, 0, 8) = '2013-12'


select closed_user  from notes_detail 



















#Nodos que fueron eliminados en menos de un hora
SELECT count(*) from notes_detail  where time_open < 3600
SELECT * from notes_detail  where time_open <3600



