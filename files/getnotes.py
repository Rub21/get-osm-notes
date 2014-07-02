#!/usr/bin/python
# -*- coding: utf-8 -*-
import sqlite3 as lite
import sys
from urllib import urlopen
from xml.etree import ElementTree
from datetime import datetime
import time
import json
from shapely.geometry import box, Point
import timeit
import threading

if (len(sys.argv) < 2):
    raise 'Ejecutar: get-data2geojson minx, miny, maxx, maxy, user'

def get_data(id):
    url = 'http://api.openstreetmap.org/api/0.6/notes/%d' %(id)
    
    tree = ElementTree.parse(urlopen(url))
    note = tree.findall("note")
    for n in note:
        print url
        lon = float(n.attrib['lon'])
        lat = float(n.attrib['lat'])
        print lon,lat
        id=n.iterfind('id')
        print id
        date_created = n.iterfind('date_created')
        for dc in date_created:
            print dc
        date_closed = n.iterfind('date_closed')
        





inicio = int(sys.argv[1])
fin = int(sys.argv[2])
for x in xrange(inicio,fin):
    threat=threading.Thread(target=get_data, args=(x,))
    threat.start()
