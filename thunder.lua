function getRedirects()
  h = http.get( "" )
  f = fs.open( "/thunderflash/tmp/redirect.thunder" )
  f.write( h.readAll() )
  f.close()
  h.close()
end
