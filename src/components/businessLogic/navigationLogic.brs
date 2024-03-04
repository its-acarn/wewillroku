sub ShowHomeScreen()
  ? "showing home screen"
  m.HomeScreen = CreateObject("roSGNode", "HomeScreen")
  ShowScreen(m.HomeScreen) 

  m.openPlayerBtn = m.top.findNode("openPlayerBtn")
  m.openPlayerBtn.observeField("buttonSelected", "onPlayerButtonPress")
end sub 

sub onPlayerButtonPress()
  print "Button was pressed"
  ShowPlayerScreen()
end sub

sub ShowPlayerScreen()
  m.PlayerScreen = CreateObject("roSGNode", "PlayerScreen")
  ShowScreen(m.PlayerScreen) 
end sub