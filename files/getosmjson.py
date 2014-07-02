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





if (len(sys.argv) < 2):
    raise 'Ejecutar: get-data2geojson minx, miny, maxx, maxy, user'

def get_data(id):
    conn = psycopg2.connect(database="dbosm-notes", user="postgres",password="1234")
    url = 'http://api.openstreetmap.org/api/0.6/notes/%d.json' %(id)
    cursor = conn.cursor()

    try:
        data = json.load(urllib2.urlopen(url))
        id = data['properties']['id']
        longitude = data['geometry']['coordinates'][0]
        latitude = data['geometry']['coordinates'][1]
        status = data['properties']['status']
        date_created = time.mktime(datetime.strptime(data['properties']['date_created'][0:10], "%Y-%m-%d").timetuple())
        closed_at = 0
        if data.has_key('closed_at'):
            closed_at = time.mktime(datetime.strptime(data['properties']['closed_at'][0:10], "%Y-%m-%d").timetuple())

        query = "INSERT INTO notes(id, latitude, longitude,  status, created_at, closed_at) VALUES (%s, %s, %s, %s, %s, %s)"
        cursor.execute(query, (id, latitude, longitude,  status, date_created, closed_at))
        cursor.close()
        conn.commit()
        conn.close()
        #data.close()
    except urllib2.HTTPError, e:
        print 'error'

inicio = int(sys.argv[1])
fin = int(sys.argv[2])
for x in xrange(inicio,fin):
    threat=threading.Thread(target=get_data, args=(x,))
    threat.start()



