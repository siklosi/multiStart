#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icon.ico
#AutoIt3Wrapper_Outfile=multiStart.Exe
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <FileConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <File.au3>

$About=""
Opt("GUIOnEventMode", 1)
;GUI Creation start
$Form1_1 = GUICreate("multiStart", 781, 571, @Desktopwidth /2 - (781/2) , @DesktopHeight /2-(571/2), $GUI_SS_DEFAULT_GUI, $WS_EX_ACCEPTFILES)
$MenuItem1 = GUICtrlCreateMenu("Info")
$MenuItem2 = GUICtrlCreateMenuItem("About", $MenuItem1)
GUICtrlSetOnEvent(-1, "About")
GUISetOnEvent($GUI_EVENT_DROPPED, "On_Drop_InFilename")
GUISetOnEvent($GUI_EVENT_CLOSE, '_exit')
GUISetFont(10, 400, 0, "Verdana")
GUISetBkColor(0x231F1B)

$File1 = GUICtrlCreateInput("", 20, 30, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)

$Minimized1 = GUICtrlCreateCheckbox("", 580, 30, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel1 = GUICtrlCreateLabel("Minimized", 600, 35, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$Hidden1 = GUICtrlCreateCheckbox("", 685, 30, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel1 = GUICtrlCreateLabel("Hidden", 705, 35, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File2 = GUICtrlCreateInput("", 20, 70, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized2 = GUICtrlCreateCheckbox("", 580, 70, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel2 = GUICtrlCreateLabel("Minimized", 600, 75, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden2 = GUICtrlCreateCheckbox("", 685, 70, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel2 = GUICtrlCreateLabel("Hidden", 705, 75, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File3 = GUICtrlCreateInput("", 20, 110, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized3 = GUICtrlCreateCheckbox("", 580, 110, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel3 = GUICtrlCreateLabel("Minimized", 600, 115, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden3 = GUICtrlCreateCheckbox("", 685, 110, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel3 = GUICtrlCreateLabel("Hidden", 705, 115, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File4 = GUICtrlCreateInput("", 20, 150, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized4 = GUICtrlCreateCheckbox("", 580, 150, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel4 = GUICtrlCreateLabel("Minimized", 600, 155, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden4 = GUICtrlCreateCheckbox("", 685, 150, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel4 = GUICtrlCreateLabel("Hidden", 705, 155, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File5 = GUICtrlCreateInput("", 20, 190, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized5 = GUICtrlCreateCheckbox("", 580, 190, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel5 = GUICtrlCreateLabel("Minimized", 600, 195, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden5 = GUICtrlCreateCheckbox("", 685, 190, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel5 = GUICtrlCreateLabel("Hidden", 705, 195, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File6 = GUICtrlCreateInput("", 20, 230, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized6 = GUICtrlCreateCheckbox("", 580, 230, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel6 = GUICtrlCreateLabel("Minimized", 600, 235, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden6 = GUICtrlCreateCheckbox("", 685, 230, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel6 = GUICtrlCreateLabel("Hidden", 705, 235, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File7 = GUICtrlCreateInput("", 20, 270, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized7 = GUICtrlCreateCheckbox("", 580, 270, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel7 = GUICtrlCreateLabel("Minimized", 600, 275, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden7 = GUICtrlCreateCheckbox("", 685, 270, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel7 = GUICtrlCreateLabel("Hidden", 705, 275, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File8 = GUICtrlCreateInput("", 20, 310, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized8 = GUICtrlCreateCheckbox("", 580, 310, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel8 = GUICtrlCreateLabel("Minimized", 600, 315, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden8 = GUICtrlCreateCheckbox("", 685, 310, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel8 = GUICtrlCreateLabel("Hidden", 705, 315, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File9 = GUICtrlCreateInput("", 20, 350, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized9 = GUICtrlCreateCheckbox("", 580, 350, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel9 = GUICtrlCreateLabel("Minimized", 600, 355, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden9 = GUICtrlCreateCheckbox("", 685, 350, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel9 = GUICtrlCreateLabel("Hidden", 705, 355, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$File10 = GUICtrlCreateInput("", 20, 390, 530, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Minimized10 = GUICtrlCreateCheckbox("", 580, 390, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$MinLabel10 = GUICtrlCreateLabel("Minimized", 600, 395, 66, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Hidden10 = GUICtrlCreateCheckbox("", 685, 390, 20, 25)
GUICtrlSetColor(-1, 0xFFFFFF)
$HidLabel10 = GUICtrlCreateLabel("Hidden", 705, 395, 48, 20)
GUICtrlSetColor(-1, 0xFFFFFF)

$Label3 = GUICtrlCreateLabel("Icon:", 120, 473, 33, 20)
GUICtrlSetColor(-1, 0xFFFFFF)
$Icon = GUICtrlCreateInput("", 165, 470, 450, 24)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)

$Button1 = GUICtrlCreateButton("Create Multi Shortcut", 300, 500, 180, 33)
GUICtrlSetOnEvent(-1, "CreateShortcut")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x008080)
GUISetState(@SW_SHOW)
;GUI Creation End

$vbsfolder = @MyDocumentsDir & "\multiStart\"
DirCreate($vbsfolder)


While 1

	Sleep(10)
WEnd



Func _exit()
	Exit 1
EndFunc   ;==>_exit

Func On_Drop_InFilename() ;Executed every time file is draged into input box
	Local $file = @GUI_DragFile
	Local $extension = StringRight($file, 3)
	If $extension == "lnk" Then ;check if droped file is valid extension
		$linkdetails = FileGetShortcut($file)
		$path = $linkdetails[0]
		$workdir = $linkdetails[1]
		$arguments = $linkdetails[2]
		If $linkdetails[4] = "" Then
			$linkdetails[4] = $linkdetails[0]
		EndIf
		$icondata = $linkdetails[4] & ";" & $linkdetails[5]
		$data = $path & ";" & $workdir & ";" & $arguments
	ElseIf $extension == "exe" Then
		$data = $file & ";;"
		$icondata = $file & ";0"
	ElseIf $extension == "bat" Or $extension == "msi" Or $extension == "vbs" Then
		$data = $file & ";;"
		$icondata = ""
	ElseIf $extension == "url" Then
		$icondata = IniRead($file, "InternetShortcut", "IconFile", "") & ";" & IniRead($file, "InternetShortcut", "IconIndex", "")
		$data = IniRead($file, "InternetShortcut", "URL", "") & ";;"

	Else
		$data = ""
		$icondata = ""
	EndIf
	If @GUI_DropId == 54 Then ;54 is Icon input field
		GUICtrlSetData(@GUI_DropId, $icondata)
	Else
		GUICtrlSetData(@GUI_DropId, $data)
	EndIf
EndFunc   ;==>On_Drop_InFilename

Func CreateShortcut()
	;putting all user entered data into array
	Local $fileData[10] = [GUICtrlRead($File1), GUICtrlRead($File2), GUICtrlRead($File3), GUICtrlRead($File4), GUICtrlRead($File5), GUICtrlRead($File6), GUICtrlRead($File7), GUICtrlRead($File8), GUICtrlRead($File9), GUICtrlRead($File10)]
	Local $minData[10] = [GUICtrlRead($Minimized1), GUICtrlRead($Minimized2), GUICtrlRead($Minimized3), GUICtrlRead($Minimized4), GUICtrlRead($Minimized5), GUICtrlRead($Minimized6), GUICtrlRead($Minimized7), GUICtrlRead($Minimized8), GUICtrlRead($Minimized9), GUICtrlRead($Minimized10)]
	Local $hidData[10] = [GUICtrlRead($Hidden1), GUICtrlRead($Hidden2), GUICtrlRead($Hidden3), GUICtrlRead($Hidden4), GUICtrlRead($Hidden5), GUICtrlRead($Hidden6), GUICtrlRead($Hidden7), GUICtrlRead($Hidden8), GUICtrlRead($Hidden9), GUICtrlRead($Hidden10)]

	$m = 0
	;vbs file data population
	$vbs = 'Dim objShell' & @CR & 'Set objShell = WScript.CreateObject( "WScript.Shell" )' & @CR
	For $fd In $fileData
		If $fd <> "" Then
			$fs = StringSplit($fd, ";")
			If $fs[2] <> "" Then
				$vbs = $vbs & 'objShell.CurrentDirectory = "' & $fs[2] & '"' & @CR
			Else
				Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
				Local $path = _PathSplit($fs[1], $sDrive, $sDir, $sFileName, $sExtension)
				If StringLeft($fs[1], 4) <> "http" And StringLeft($fs[1], 4) <> "stea" Then
					ConsoleWrite(@CR & StringLeft($fs[1], 4) & @CR)
					$vbs = $vbs & 'objShell.CurrentDirectory = "' & $path[1] & $path[2] & @CR
				EndIf
			EndIf
			$state = 1
			If $hidData[$m] == 1 Then
				$state = 0
			ElseIf $minData[$m] == 1 Then
				$state = 7
			EndIf
			If $fs[3] <> "" Then
				$vbs = $vbs & 'objShell.run """' & $fs[1] & '""" & """' & $fs[3] & '""",' & $state & ',False' & @CR
			Else
				$vbs = $vbs & 'objShell.run """' & $fs[1] & '""",' & $state & ',False' & @CR
			EndIf
		EndIf
		$m = $m + 1
	Next
	FileWrite($vbsfolder & "test.vbs", $vbs)
	$link = FileSaveDialog("Save Shortcut for multiple programs", @DesktopDir, "(*.lnk)", $FD_PATHMUSTEXIST)
	If $link <> "" Then
		Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
		Local $linkSplit = _PathSplit($link, $sDrive, $sDir, $sFileName, $sExtension)
		$time = @YEAR & @MON & @MDAY & @HOUR & @MIN & @SEC
		$fname = $linkSplit[3]
		$vbsfile = $vbsfolder & $fname & "_" & $time & ".vbs" ;vbs script located in mydocuments/multiStart
		FileWrite($vbsfile, $vbs) ; save vbs file
		$icondata = GUICtrlRead($Icon)
		$icd = StringSplit($icondata, ";")
		FileCreateShortcut($vbsfile, $link, "", "", "multiStart Link", $icd[1], "", $icd[2]) ;Create Shortcut
	EndIf
EndFunc   ;==>CreateShortcut


Func About()

$About = GUICreate("About", 265, 400,@Desktopwidth /2 - (265/2) , @DesktopHeight /2-(400/2), -1, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE))
GUISetFont(10, 400, 0, "Verdana")
GUISetOnEvent($GUI_EVENT_CLOSE, '_close_about')
GUISetBkColor(0x231F1B)
$ablabel1 = GUICtrlCreateLabel("", 12, 10, 250, 160, $SS_CENTER)
GUICtrlSetColor(-1, 0xFFFFFF)
$ablabel2 = GUICtrlCreateLabel("", 12, 190, 250, 80, $SS_CENTER)
GUICtrlSetColor(-1, 0xFFFFFF)
$abgitlink = GUICtrlCreateLabel("https://github.com/siklosi/multiStart", 5, 270, 250, 20, $SS_CENTER)
GUICtrlSetFont(-1, 10, 400, 6, "Verdana")
GUICtrlSetColor(-1, 0x0000FF)
GUICtrlSetOnEvent(-1, "openGit")

$ablabel3 = GUICtrlCreateLabel("", 12, 300, 250, 40, $SS_CENTER)
GUISetFont(10, 400, 0, "Verdana")
GUICtrlSetColor(-1, 0xFFFFFF)

$abcoffeelink = GUICtrlCreateLabel("Coffee", 12, 340, 250, 20, $SS_CENTER)
GUICtrlSetFont(-1, 10, 400, 6, "Verdana")
GUICtrlSetColor(-1, 0x0000FF)
GUICtrlSetOnEvent(-1, "openCoffee")

GUICtrlSetData($ablabel1,"Drag and drop programs you want to be started from multiStart shortcut into input boxes, select wheather you want them to be minimized or hidden, drag and drop program from which you want icon to be used when creating shortcut and finaly click on 'Create Multi Shortcut' select where you want shortcut to be created and name it")
GUICtrlSetData($ablabel2,"This program will create for you vbs script file (located in folder multiStart in your documents folder) and will point new shorcut to that file")
GUICtrlSetData($ablabel3,"Finalay if you find this program usefull consider buying me a")
GUISetState(@SW_SHOW)

EndFunc   ;==>About

Func _close_about()
GUIDelete($About)
EndFunc

func openGit()
ShellExecute("https://github.com/siklosi/multiStart")
EndFunc

func openCoffee()
ShellExecute("https://buymeacoffee.com/siklosi")
EndFunc
