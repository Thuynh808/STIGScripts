<#
.SYNOPSIS
    Enables Auditing Account Lockout - Failures

.NOTES
    Author          : Thong Huynh
    LinkedIn        : linkedin.com/in/thuynh808/
    GitHub          : github.com/thuynh808
    Date Created    : 2026-02-02
    Last Modified   : 2026-02-02
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000054

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-AU-000054).ps1 
#>

auditpol /set /subcategory:"Account Lockout" /failure:enable

# Quick verify

auditpol /get /subcategory:"Account Lockout"
