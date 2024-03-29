sub init()
    InitScreenStack()
    ShowHomeScreen()
end sub
    
' The OnKeyEvent() function receives remote control key events
function OnKeyEvent(key as String, press as Boolean) as Boolean
    result = false
    if press AND key = "back"
        numberOfScreens = m.screenStack.Count()
        ' close top screen if there are two or more screens in the screen stack
        if numberOfScreens > 1
            CloseScreen(invalid)
            result = true
        end if
    end if
    ' The OnKeyEvent() function must return true if the component handled the event,
    ' or false if it did not handle the event.
    return result
end function


