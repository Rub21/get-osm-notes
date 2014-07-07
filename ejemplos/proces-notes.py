#!/usr/bin/env python

import sqlite3, sys
import xml.parsers.expat
from dateutil.parser import parse

if (len(sys.argv) < 1):
    raise 'Usage: stm.py changeset.osm db.sqlite'

osm_filename = sys.argv[1]
#sqlite_filename = sys.argv[2]

#print("piping %s -> %s" % (osm_filename, sqlite_filename))

#conn = sqlite3.connect(sqlite_filename)

#cur = conn.cursor()

# Optimize connection
#cur.execute("""PRAGMA synchronous=0""")
#cur.execute("""PRAGMA locking_mode=EXCLUSIVE""")
#cur.execute("""PRAGMA journal_mode=DELETE""")

query = """insert into osm_changeset
    (rowid, user_id, min_lon, min_lat, max_lon, max_lat, closed_at, num_changes)
    values (?, ?, ?, ?, ?, ?, ?, ?)"""

def save(name,attrib):
    #attrib_id = int(attrib['id'])
    print str(name),attrib
    '''cur.execute(query,
                    (attrib_id,
                    int(attrib.get('uid', -1)),
                    float(attrib.get('min_lon', 0)),
                    float(attrib.get('min_lat', 0)),
                    float(attrib.get('max_lon', 0)),
                    float(attrib.get('max_lat', 0)),
                    int(parse(attrib["created_at"]).strftime('%s')),
                    int(attrib['num_changes'])))'''

def start_element(name, attrs):
    #if name == 'note':
        save(name, attrs)

p = xml.parsers.expat.ParserCreate()
p.StartElementHandler = start_element

p.ParseFile(open(osm_filename))