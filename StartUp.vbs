Set WshShell = CreateObject("WScript.Shell")

' 啟動 React
WshShell.Run "cmd /c serve -s """ & CreateObject("Scripting.FileSystemObject").GetAbsolutePathName("dist") & """ -l 3000", 0, False

' 啟動 .NET API
WshShell.Run "cmd /c dotnet """ & CreateObject("Scripting.FileSystemObject").GetAbsolutePathName("publish\MeiShan.Api.dll") & """ --urls ""http://192.168.16.1:5000""", 0, False