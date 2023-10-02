# Validate all BCheck scripts against the official validator provided.
$JarUrl = "https://github.com/PortSwigger/BChecks/raw/main/BCheckChecker-1.2.jar"
(New-Object System.Net.WebClient).DownloadFile($JarUrl, ".\BCheckChecker.jar")
java -jar BCheckChecker.jar
exit $LASTEXITCODE