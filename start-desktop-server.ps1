$ErrorActionPreference = 'Stop'
$AppDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $AppDir

$port = 8000
$ip = (Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway -and $_.IPv4Address } | Select-Object -First 1 -ExpandProperty IPv4Address).IPAddress
if (-not $ip) { $ip = 'localhost' }

Write-Host ''
Write-Host '個人化輔聽校正系統 PWA server' -ForegroundColor Cyan
Write-Host '電腦本機開啟:' -ForegroundColor Green
Write-Host "  http://localhost:$port/index.html"
Write-Host '手機同 Wi-Fi 開啟:' -ForegroundColor Green
Write-Host "  http://$ip`:$port/index.html"
Write-Host ''
Write-Host '提示: 若手機瀏覽器限制 MIC，請改用 HTTPS 部署，例如 GitHub Pages / Netlify / Vercel。' -ForegroundColor Yellow
Write-Host '按 Ctrl+C 可停止 server。'
Write-Host ''

python -m http.server $port --bind 0.0.0.0
