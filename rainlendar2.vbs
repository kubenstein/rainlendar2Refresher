program = "C:\Program Files\Rainlendar2\Rainlendar2.exe"
ics = "C:\Users\kuba\Dropbox\default.ics"


set fso = CreateObject("Scripting.FileSystemObject")
set objFSO = CreateObject("Scripting.FileSystemObject")
set objFile = objFSO.GetFile( ics )
set WshShell = WScript.CreateObject("WScript.Shell")
params = "-e " & Chr(34) & "Hotkey_Refresh()" & Chr(34)
modTime = objFile.DateLastModified
WshShell.Run Chr(34) & program & Chr(34)

Do
	WScript.Sleep 20000 '20 seconds
	if objFile.DateLastModified <> modTime then
		WshShell.Run Chr(34) & program & Chr(34) & " " & params
		modTime = objFile.DateLastModified
	end if
	set colProcessList = GetObject("Winmgmts:").ExecQuery("Select * from Win32_Process")

	' looping thru process finding rainlendar2 to know when exit loop
	found = false
	for each objProcess in colProcessList
		if objProcess.name = "Rainlendar2.exe" then
			found = true
		end if
	next

	if found = false then
		WScript.Quit
	end if
loop
