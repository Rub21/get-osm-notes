from xml.etree.ElementTree import ElementTree
from sys import argv
from datetime import datetime
import time
import json
import psycopg2
import os, sys

tree = ElementTree()
conn = psycopg2.connect(database="dbnotes", user="postgres",password="1234")
cursor = conn.cursor()

if (len(argv) < 2):
    print "ingrese archivo"
    exit()

tree.parse(argv[1])


notes = tree.findall("note")
for n in notes:
    #print type(n)
    lon = float(n.attrib['lon'])
    lat = float(n.attrib['lat'])
    print '++++++++++++++++INICIO'
    print lon,lat
    
    id = ''
    date_created = ''
    date_closed= None
    status = 'open'
    open_user=''
    closed_user=''
    bandera_user=True


    for i in n.iterfind('id'):
        id = i.text
    for dc in n.iterfind('date_created'):
        date_created = dc.text
    for dcl in n.iterfind('date_closed'):
        date_closed = dcl.text
        status = 'closed'
        for user in n.iterfind('comments/comment/user'):
            closed_user=user.text
    for comts in n.iterfind('comments'):
        #print comts
        for comt in comts.iterfind('comment'):
            #print comt
            for us in comt.iterfind('user'):
                print us.text
   

    print '++++++++++++++++FINAL'

        #for cm in comments.iterfind('comment'):
         #   print cn
           

            
    #element = n.find('comments')
    #print element.iter("comment")

    
    
    query = "INSERT INTO notes(id, latitude, longitude, status, created_at, closed_at)  VALUES  (%s, %s, %s, %s, %s, %s);"
    #cursor.execute(query, (id, lat, lon, status, date_created, date_closed))


cursor.close()
#conn.commit()
conn.close()
print 'saving on db'
