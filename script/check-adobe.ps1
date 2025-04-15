# Script: Verifica vulnerabilidades do Adobe Reader
$LogFile = "..\logs\log_adobe_$(Get-Date -Format 'yyyyMMdd').txt"
$AdobeURL = "https://helpx.adobe.com/security.html"

try {
    $content = Invoke-WebRequest -Uri $AdobeURL -UseBasicParsing
    $lines = ($content.Content | Select-String -Pattern "Reader", "Security", "CVE")

    if ($lines) {
        "🔴 Adobe Reader: Vulnerabilidades encontradas em $(Get-Date)" | Out-File $LogFile -Append
        $lines | Out-File $LogFile -Append
    } else {
        "🟢 Adobe Reader: Nenhuma vulnerabilidade encontrada em $(Get-Date)" | Out-File $LogFile -Append
    }
} catch {
    "Erro ao acessar o site da Adobe: $_" | Out-File $LogFile -Append
}
