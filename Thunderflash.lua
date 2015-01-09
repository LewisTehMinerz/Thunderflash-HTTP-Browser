if not fs.exists( "/thunder" ) then
  h = http.get( "https://raw.githubusercontent.com/lewislovesgames/Thunderflash-HTTP-Browser/master/thunder.lua" )
  f = fs.open( "thunder", "w" )
  f.write( h.readAll() )
  f.close()
  h.close()
end
os.loadAPI( "thunder" )

if not fs.exists( "/thunderflash/ui" ) then
  thunder.getUI()
end
thunder.getRedirects()
os.loadAPI( "ui" )
if not fs.exists( "/thunderflash/config" ) then
  local items = {
    "Start Setup",
    "Terminate",
  }
  local items2 = {
    "Standard",
    "Advanced (For Developers)",
  }
  selected = ui.menu( items, "Thunderflash Setup Utility", 1, false )
    if selected == 1 then
      selected2 = ui.menu( items2, "Thunderflash Setup Utility", 1, false )
      if selected2 == 1 then
        ui.clearArea( term.getSize() )
        ui.cprint( "Setting Up..." )
        x, y = term.getSize()
        pb = ui.progressBar( x-1, y-1, x-1, colours.green, "Setup Progress" )
        pb:draw()
      elseif selected2 == 2 then
        ui.clearArea( term.getSize() )
        ui.cprint( "Advanced not done yet" )
    elseif selected == 2 then
      return "Terminated"
    else
      return false
    end
  end
end
