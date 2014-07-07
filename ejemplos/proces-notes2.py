
#!/usr/bin/env python

import sys
import xml.parsers.expat


osm_filetag = sys.argv[1]

if (len(sys.argv) < 1):
    raise 'Usage: stm.py changeset.osm db.sqlite'
global_note={}


# 3 handler functions
def start_element(tag, attrs):#tag=tag
    print "<%s>"%(str(tag))
    if tag == 'note':
        global_note={}
        print attrs
    if tag == 'id':
        print 'i----d'

def char_data(data):
    print 'Character data:', str(data)


def end_element(tag):
    print "</%s>"%(str(tag))



p = xml.parsers.expat.ParserCreate()

p.StartElementHandler = start_element
p.EndElementHandler = end_element
p.CharacterDataHandler = char_data

p.ParseFile(open(osm_filetag))


'''p = Parser()
p.feed(open(osm_filetag))
p.close("FINAL DE PROCESAMIENTO")'''