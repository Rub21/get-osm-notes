 http://api.openstreetmap.org/api/0.6/notes?bbox=left,bottom,right,top

 select * from grid4 where "left"=-0.0000000000000000 and bottom = 52.0000000000000000
  SELECT gid, "left",top as bottom  , "right", bottom as top  , geom  FROM grid4 where "left"=-0.0000000000000000 and bottom = 52.0000000000000000


  SELECT gid, "left",top as bottom  , "right", bottom as top  , geom  FROM grid4
  http://api.openstreetmap.org/api/0.6/notes?bbox=0.0000000000000000,48.0000000000000000,4.0000000000000000,52.0000000000000000
  http://api.openstreetmap.org/api/0.6/notes.json?bbox=0.0000000000000000,48.0000000000000000,4.0000000000000000,52.0000000000000000