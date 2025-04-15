# Integração com SCCM - exemplo básico
Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
Set-Location "LAB:"  # Ajuste para seu site code

# Exemplo: verificar pacotes com fontes antigas
$Pacotes = Get-CMPackage | Where-Object {
    $_.Name -match "WinRAR|Adobe|7-Zip" -and $_.SourceDate -lt (Get-Date).AddDays(-30)
}

foreach ($pacote in $Pacotes) {
    Write-Host "🔁 Atualizando pacote SCCM: $($pacote.Name)"
    # Aqui você pode adicionar lógica de atualização de source e redistribuição
}
