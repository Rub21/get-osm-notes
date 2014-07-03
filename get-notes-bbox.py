#!/usr/bin/python
# -*- coding: utf-8 -*-
import psycopg2
from datetime import datetime
import time
from sys import argv
import json
import codecs
import os
import urllib2
import psycopg2
import os

conn = psycopg2.connect(host='192.168.1.50', port= '5432' ,database="dbosmnotes", user="postgres",password="rub212106tkm" )
cursor = conn.cursor()

query = 'SELECT "left",top as bottom  , "right", bottom as top   FROM grid4;'
cursor.execute(query)


def get_data(url): 
    print url
    data = json.load(urllib2.urlopen(url))
    #print data
    for note in data['features']:
        id = note['properties']['id']
        longitude = note['geometry']['coordinates'][0]
        latitude = note['geometry']['coordinates'][1]
        status = note['properties']['status']
        date_created = note['properties']['date_created']

        if 'closed_at' in note['properties']:
            closed_at = note['properties']['closed_at']
            query = "INSERT INTO notes(id, latitude, longitude,  status, created_at, closed_at) VALUES (%s, %s, %s, %s, %s, %s)"
            cursor.execute(query, (id, latitude, longitude,  status, date_created, closed_at))
        else:
            query = "INSERT INTO notes(id, latitude, longitude,  status, created_at) VALUES (%s, %s, %s, %s, %s)"
            cursor.execute(query, (id, latitude, longitude,  status, date_created))
            conn.commit()




resultados = cursor.fetchall()
for grid in resultados:
    left = grid[0]
    bottom = grid[1]
    right = grid[2]
    top = grid[3]
    url ="http://api.openstreetmap.org/api/0.6/notes.json?bbox=%d,%d,%d,%d" %(left,bottom,right,top)
    #print url
    get_data(url)
    #print left , bottom , right ,top

cursor.close()
conn.close()
