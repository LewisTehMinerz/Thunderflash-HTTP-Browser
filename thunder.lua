function getRedirects()
  h = http.get( "https://raw.githubusercontent.com/lewislovesgames/Thunderflash-HTTP-Browser/master/redirect.thunder" )
  f = fs.open( "/thunderflash/tmp/redirect.thunder" )
  f.write( h.readAll() )
  f.close()
  h.close()
end
