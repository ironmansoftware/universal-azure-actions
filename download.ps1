$Version = (Invoke-WebRequest https://imsreleases.blob.core.windows.net/universal/production/version.txt).Content
Invoke-WebRequest "https://imsreleases.blob.core.windows.net/universal/production/$Version/Universal.win-x64.$Version.zip" -OutFile ".\pu.zip"
Expand-Archive -Path .\pu.zip -DestinationPath .\pu
Copy-Item .\appsettings.json .\pu -Force 
Copy-Item .\web.config .\pu -Force 