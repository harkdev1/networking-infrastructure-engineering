
# Project 2 - Basic Network Validation
# Read-only connectivity tests; does not change firewall settings.

Write-Host "`n=== Network Validation ===" -ForegroundColor Cyan
Get-Date
Write-Host "`n=== IP Configuration ===" -ForegroundColor Cyan
ipconfig

Write-Host "`n=== LAN Gateway ===" -ForegroundColor Cyan
Test-Connection 192.168.20.1 -Count 2

Write-Host "`n=== Public IP Connectivity ===" -ForegroundColor Cyan
Test-Connection 1.1.1.1 -Count 2

Write-Host "`n=== DNS Resolution ===" -ForegroundColor Cyan
Resolve-DnsName example.com

Write-Host "`n=== HTTPS Connectivity ===" -ForegroundColor Cyan
Test-NetConnection example.com -Port 443 |
    Select-Object ComputerName, RemotePort, TcpTestSucceeded

Write-Host "`n=== Validation Complete ===" -ForegroundColor Green
