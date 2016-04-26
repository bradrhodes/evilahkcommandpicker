; ===============================================
; Add your custom Commands to this file.
; If you want to break your commands up over multiple files, simply include a reference to them here.
;	e.g. #Include MyWorkRelatedCommands.ahk	; MyWorkRelatedCommands.ahk should be in the Commands directory along with this MyCommands.ahk file.
; ===============================================

AddCommand("EditMyCommands", "Opens the MyCommands.ahk script for editing in the default editor, or notepad.")
EditMyCommands()
{
	filePath = %A_ScriptDir%\Commands\MyCommands.ahk
	Run, edit %filePath%,,UseErrorLevel
	if (%ErrorLevel% = ERROR)
		Run, "notepad" "%filePath%"
}

AddCommand("EditMyHotkeys", "Opens the MyHotkeys.ahk script for editing in the default editor, or notepad.")
EditMyHotkeys()
{
	filePath = %A_ScriptDir%\Commands\MyHotkeys.ahk
  Run, edit %filePath%,,UseErrorLevel
	if (%ErrorLevel% = ERROR)
		Run, "notepad" "%filePath%"
}

AddCommand("DisableTouchpad", "Disables the touchpad.")
DisableTouchpad()
{
  Run %A_WinDir%\system32\control.exe main.cpl ; Open Mouse Properties

  Sleep 500

  if WinExist("Mouse Properties")
  {
    Send, ^+{TAB} ; Ctrl+Shift+Tab jumps to the last tab
    Sleep 200
    Control, ChooseString, Use TrackPoint Only, ComboBox1, Mouse Properties
    ControlClick, Button21
  }
}

AddCommand("EnableTouchpad", "Disables the touchpad.")
EnableTouchpad()
{
  Run %A_WinDir%\system32\control.exe main.cpl ; Open Mouse Properties

  Sleep 500

  if WinExist("Mouse Properties")
  {
    Send, ^+{TAB} ; Ctrl+Shift+Tab jumps to the last tab
    Sleep 200
    Control, ChooseString, Use TouchPad and TrackPoint, ComboBox1
    ControlClick, Button21
  }
}

; ===============================
; Ideas:
;   - Commands that can switch to different keyboard modes
;     - basically have all the modes available in the Ultimate Hacker Keyboard and also a 'normal' or 'default' mode
;   - 
; ===============================
