$pathToChrome = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
$url1 = "http://www.1passsword.com/"
$url2 = "https://www.salesforce.com/"

Start-Process -FilePath $pathToChrome -ArgumentList $url1, --no-sandbox
Start-Sleep -s 2
Start-Process -FilePath $pathToChrome -ArgumentList $url2, --no-sandbox
