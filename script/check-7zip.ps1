# Script: Verifica se há atualizações/vulnerabilidades no 7-Zip
$LogFile = "..\logs\log_7zip_$(Get-Date -Format 'yyyyMMdd').txt"
$SevenZipSite = "https://www.7-zip.org/"

try {
    $content = Invoke-WebRequest -Uri $SevenZipSite -UseBasicParsing
    if ($content.Content -match "vulnerability|CVE|Security") {
        "🔴 Vulnerabilidade ou atualização detectada em $(Get-Date)" | Out-File $LogFile -Append
    } else {
        "🟢 Nenhuma vulnerabilidade ou atualização crítica em $(Get-Date)" | Out-File $LogFile -Append
    }
} catch {
    "Erro ao acessar o site do 7-Zip: $_" | Out-File $LogFile -Append
}
