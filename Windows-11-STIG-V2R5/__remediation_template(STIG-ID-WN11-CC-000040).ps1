<#
.SYNOPSIS
    Disable insecure guest logons to SMB servers

.NOTES
    Author          : Thong Huynh
    LinkedIn        : linkedin.com/in/thuynh808/
    GitHub          : github.com/thuynh808
    Date Created    : 2026-02-01
    Last Modified   : 2026-02-01
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000040

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000040).ps1 
#>

# Policy-backed setting (what STIG checks)
New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation" -Force | Out-Null
Set-ItemProperty `
  "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation" `
  -Name AllowInsecureGuestAuth `
  -Type DWord `
  -Value 0

# Quick verify
Get-ItemProperty `
  "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation" `
  -Name AllowInsecureGuestAuth