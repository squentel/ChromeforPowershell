$pathToChrome = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
$url1 = "http://172.17.0.21:8081"
$url2 = "https://www.salesforce.com/"

Start-Process -FilePath $pathToChrome -ArgumentList $url1, --no-sandbox
Start-Process -FilePath $pathToChrome -ArgumentList $url2, --no-sandbox
