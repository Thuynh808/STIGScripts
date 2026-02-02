<#
.SYNOPSIS
    Set Security event log max size to 1024000 KB (1 GB) or greater

.NOTES
    Author          : Thong Huynh
    LinkedIn        : linkedin.com/in/thuynh808/
    GitHub          : github.com/thuynh808
    Date Created    : 2026-02-01
    Last Modified   : 2026-02-01
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000505

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-AU-000505).ps1 
#>

$MaxSizeKB = 1024000
$MaxSizeBytes = $MaxSizeKB * 1024

# Policy-backed setting (what STIG checks)
New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" -Force | Out-Null
Set-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" -Name MaxSize -Type DWord -Value $MaxSizeKB

# Live setting (immediate effect)
Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Services\EventLog\Security" -Name MaxSize -Type DWord -Value $MaxSizeBytes

# Quick verify
Get-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" -Name MaxSize
wevtutil gl Security | findstr /i maxSize