import psycopg2
import os, sys
conn = psycopg2.connect(database="dbosm-notes", user="postgres",password="1234")
cursor = conn.cursor()
query1 = "CREATE TABLE la_vinotinto (id serial primary key, goles integer, nombres varchar(100), apellidos varchar(100));"
cursor.execute(query1)
query2 = "INSERT INTO la_vinotinto(goles, nombres, apellidos) VALUES (%s, %s, %s)"
cursor.execute(query2, (22, "Anderson", "Espino"))
cursor.close()
conn.commit()
conn.close()