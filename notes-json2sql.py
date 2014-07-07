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


class Obj_note(object):
    lat = 0.0
    lon = 0.0
    id = ''
    date_created = ''
    date_closed= None
    status = 'open'
    open_user=''
    closed_user=''
    open_comment=''
    closed_commet = ''
    time_open = None #in seconds

    #def det_time_open():
        #time_open = date_closed - date_created

with open(argv[1]) as json_file:
    json_data = json.load(json_file)
    
    #print(json_data)
    #print len(json_data['osm']['note'])


    for note in json_data['osm']['note']:
        obj_note = Obj_note()

        obj_note.lat = note['@lat']
        obj_note.lon = note['@lon']
        obj_note.id = note['id']

        print obj_note.id
        obj_note.date_created = note['date_created']

        #date_closed = note['date_closed']
        print type(note['comments']['comment'])

        if type(note['comments']['comment']) is list:
            print "=============================================== LISTA"
            last_comment = len(note['comments']['comment'])-1
            #USER WHO OPEN THE NOTE
            if 'user' in note['comments']['comment'][0]:
                obj_note.open_user = note['comments']['comment'][0]['user']                
            else:
                obj_note.open_user='Anonimo'
            obj_note.open_comment = note['comments']['comment'][0]['text']

            #USER WHO CLOSED THE NOTE
            if note['comments']['comment'][last_comment]['action'] == 'closed':
                obj_note.closed_user = note['comments']['comment'][last_comment]['user']
                obj_note.date_closed =  note['comments']['comment'][last_comment]['date']
                obj_note.status = note['comments']['comment'][last_comment]['action']

                #obj_note.time_open = obj_note.date_closed - obj_note.date_created
                d_closed = time.mktime(datetime.strptime(str(obj_note.date_closed)[:19], "%Y-%m-%d %H:%M:%S").timetuple())
                d_created = time.mktime(datetime.strptime(str(obj_note.date_created)[:19], "%Y-%m-%d %H:%M:%S").timetuple())
                obj_note.time_open=d_closed - d_created
                print obj_note.time_open

            else:
               obj_note.closed_user = None
               obj_note.date_closed = None

            #OPENED COMMENT TEXT
            if 'text' in note['comments']['comment'][0]:
                obj_note.open_comment = note['comments']['comment'][0]['text']
            else:
                obj_note.open_comment = None

            #LAST COMMET TEXT - CLOSED
            if 'text' in note['comments']['comment'][last_comment]:
                obj_note.closed_commet = note['comments']['comment'][last_comment]['text']
            else:
                obj_note.closed_commet = None

        else:
            print "=============================================== DICT"
            #user
            if 'user' in note['comments']['comment']:
                obj_note.open_user = note['comments']['comment']['user']                
            else:
                obj_note.open_user = 'Anonimo'
                
            #text
            if 'text' in note['comments']['comment']:
                obj_note.open_comment = note['comments']['comment']['text']
            else:
                obj_note.open_comment = None


        print obj_note.id,obj_note.status,obj_note.lat,obj_note.lon,obj_note.date_created,obj_note.date_closed,obj_note.open_user,obj_note.closed_user,obj_note.open_comment,obj_note.closed_commet,obj_note.time_open
        query = "INSERT INTO notes_detail(id, lat, lon, date_created, date_closed, status, open_user, closed_user, open_comment, closed_commet, time_open) VALUES (%s, %s, %s, %s, %s, %s, %s, %s,%s, %s, %s);"
        cursor.execute(query, (obj_note.id,obj_note.lat,obj_note.lon,obj_note.date_created,obj_note.date_closed,obj_note.status,obj_note.open_user,obj_note.closed_user,obj_note.open_comment,obj_note.closed_commet,obj_note.time_open))


cursor.close()
conn.commit()
conn.close()
print 'saving on db'
