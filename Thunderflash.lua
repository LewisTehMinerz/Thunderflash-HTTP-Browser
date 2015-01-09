os.loadAPI( "thunder" )
if not fs.exists( "/thunderflash/ui" ) then
  thunder.getUI()
end
thunder.getRedirects()
os.loadAPI( "ui" )
