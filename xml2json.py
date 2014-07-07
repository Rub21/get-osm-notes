

 #!/usr/bin/env python
 
import xmltodict
import json
 
xl = file('notes-dump-test.xml') 
result = xmltodict.parse(xl)
json.dump(result, open('notes-dump-test.json', 'w'))