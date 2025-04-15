# Script: Verifica vulnerabilidades do WinRAR no site oficial
$LogFile = "..\logs\log_winrar_$(Get-Date -Format 'yyyyMMdd').txt"
$WinRARSite = "https://www.win-rar.com/start.html?&L=0"

try {
    Write-Output "Verificando site do WinRAR..." | Out-File $LogFile -Append
    $content = Invoke-WebRequest -Uri $WinRARSite -UseBasicParsing
    if ($content.Content -match "Security|CVE|Vulnerability") {
        "🔴 Possível vulnerabilidade detectada em $(Get-Date)" | Out-File $LogFile -Append
    } else {
        "🟢 Nenhuma vulnerabilidade detectada em $(Get-Date)" | Out-File $LogFile -Append
    }
} catch {
    "Erro ao acessar o site do WinRAR: $_" | Out-File $LogFile -Append
}
