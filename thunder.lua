function createDirs()
  fs.makeDir( "/thunderflash" )
  fs.makeDir( "/thunderflash/tmp" )
end
function getRedirects()
  if fs.exists( "/thunderflash/tmp/redirect.thunder" ) then
    fs.delete( "/thunderflash/tmp/redirect.thunder" )
  end
  h = http.get( "https://raw.githubusercontent.com/lewislovesgames/Thunderflash-HTTP-Browser/master/redirect.thunder" )
  f = fs.open( "/thunderflash/tmp/redirect.thunder" )
  f.write( h.readAll() )
  f.close()
  h.close()
end
function downloadUI()
  h = http.get( "https://raw.githubusercontent.com/MultHub/LMNet-OS/master/src/apis/ui.lua" )
  f = fs.open( "/thunderflash/ui" )
  f.write( h.readAll() )
  f.close()
  h.close()
end
