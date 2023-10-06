# Validate all BCheck scripts against the official validator provided.
$JarUrl = "https://github.com/PortSwigger/BChecks/raw/main/BCheckChecker-1.3.jar"
$Checker = ".\BCheckChecker.jar"
if (-not(Test-Path -Path $Checker -PathType Leaf)) {
    Write-Host "Download the 'BCheckChecker.jar' file..."
    (New-Object System.Net.WebClient).DownloadFile($JarUrl, $Checker)
}
else {
    Write-Host "File 'BCheckChecker.jar' already present."
}
java -jar $Checker
exit $LASTEXITCODE
