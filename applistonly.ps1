$listApps=Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize
$listApps | Out-File -filepath C:\myapps.txt
$FileNameTS = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss");
$file = "C:\myapps.txt"
$ftpuri = "ftp://demoUser:CrowdDemo789!@172.17.0.34/myapps"+$FileNameTS+".txt"
$webclient = New-Object System.Net.WebClient
$uri = New-Object System.Uri($ftpuri)
$webclient.UploadFile($uri, $file)  
Remove-Item -Path C:\myapps.txt -Force
