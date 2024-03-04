sub init()
  ? "Show HomeScreen"
  m.openPlayerBtn = m.top.findNode("openPlayerBtn")
  
  rect = m.openPlayerBtn.boundingRect()
  centerx = (1280 - rect.width) / 2
  centery = (720 - rect.height) / 2
  m.openPlayerBtn.translation = [ centerx, centery ]

  m.top.ObserveField("visible", "onVisibleChange")
end sub

sub onVisibleChange() ' invoked when GridScreen change visibility
  if m.top.visible = true
      m.openPlayerBtn.SetFocus(true) ' set focus to rowList if GridScreen visible
  end if
end sub
  
sub setFocusNow()
  m.openPlayerBtn.setFocus(true)
end sub
