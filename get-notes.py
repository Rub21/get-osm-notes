#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
from datetime import datetime
import time
import json
import timeit
import threading
import urllib2
import psycopg2
import os




conn = psycopg2.connect(database="dbosm-notes", user="postgres",password="1234")
if (len(sys.argv) < 2):
    raise 'Ejecutar: get-data2geojson minx, miny, maxx, maxy, user'

def get_data(id):
    
    url = 'http://api.openstreetmap.org/api/0.6/notes/%d.json' %(id)
    cursor = conn.cursor()
    print url
    try:
        data = json.load(urllib2.urlopen(url))
    except urllib2.HTTPError, e:
        print 'Error... %s' %(url)
        return False

    id = data['properties']['id']
    longitude = data['geometry']['coordinates'][0]
    latitude = data['geometry']['coordinates'][1]
    status = data['properties']['status']
    date_created = data['properties']['date_created']
    
    if 'closed_at' in data['properties']:
        closed_at = data['properties']['closed_at']
        query = "INSERT INTO notes(id, latitude, longitude,  status, created_at, closed_at) VALUES (%s, %s, %s, %s, %s, %s)"
        cursor.execute(query, (id, latitude, longitude,  status, date_created, closed_at))
    else:
        query = "INSERT INTO notes(id, latitude, longitude,  status, created_at) VALUES (%s, %s, %s, %s, %s)"
        cursor.execute(query, (id, latitude, longitude,  status, date_created))
    cursor.close()
    #conn.commit()
    #conn.close()
    print 'ok... %s' %(url)
    if (id% 100 == 0):
        conn.commit()

inicio = int(sys.argv[1])
fin = int(sys.argv[2])
for x in xrange(inicio,fin):
    threat=threading.Thread(target=get_data, args=(x,))
    threat.start()
    #time.sleep(0.01)


