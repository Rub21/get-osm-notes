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
lat = 0.0
lon = 0.0
id = ''
date_created = ''
date_closed= None
status = 'open'
open_user=''
closed_user=''

class Student(object):
    name = ""
    age = 0
    major = ""

    # The class "constructor" - It's actually an initializer 
    def __init__(self, name, age, major):
        self.name = name
        self.age = age
        self.major = major

def make_student(name, age, major):
    student = Student(name, age, major)
    return student




with open(argv[1]) as json_file:
    json_data = json.load(json_file)
    
    #print(json_data)
    #print len(json_data['osm']['note'])


    for note in json_data['osm']['note']:
        lat = note['@lat']
        lon = note['@lon']
        id = note['id']
        print id
        date_created = note['date_created']
        #date_closed = note['date_closed']
        print type(note['comments']['comment'])

        if type(note['comments']['comment']) is list:
            last_comment = len(note['comments']['comment'])-1
            #USER WHO OPEN THE NOTE
            if 'user' in note['comments']['comment'][0]:
                open_user =note['comments']['comment'][0]['user']
            else:
                open_user='anonimo'

            #USER WHO CLOSED THE NOTE
            if note['comments']['comment'][last_comment]['action'] == 'closed':
                closed_user = note['comments']['comment'][last_comment]['user']
                date_closed =  note['comments']['comment'][last_comment]['date']
            else:
                closed_user = None

            print open_user, closed_user


            



      

    query = "INSERT INTO notes(id, latitude, longitude, status, created_at, closed_at)  VALUES  (%s, %s, %s, %s, %s, %s);"
    #cursor.execute(query, (id, lat, lon, status, date_created, date_closed))


cursor.close()
#conn.commit()
conn.close()
print 'saving on db'
