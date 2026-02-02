# STIGScripts

This repository contains **simple, focused remediation scripts** for applying **DISA STIG (Security Technical Implementation Guide)** requirements across multiple operating systems.

The goal of this repo is to provide:
- Clear, minimal scripts
- One STIG per script
- Easy copy/paste or automation use
- Practical lab and learning reference

No overengineering. Just clean remediation.

---

## Repository Structure

Each operating system and STIG version has its own directory.

```bash
STIGScripts/
├── Windows-11-STIG-V2R5/
│ ├── __remediation_template(STIG-ID-WN11-CC-000370).ps1
│ ├── __remediation_template(STIG-ID-WN11-AU-000500).ps1
│ ├── __remediation_template(STIG-ID-WN11-AC-000035).ps1
│ └── ...
├── RHEL-STIG/
│ └── (future)
├── Ubuntu-STIG/
│ └── (future)
└── README.md
```

---

## Windows 11 STIG Scripts

**Directory:**  
`Windows-11-STIG-V2R5/`

- Target: **Windows 11 STIG V2R5**
- Script type: **PowerShell**
- Scope: **Local system (non-domain unless noted)**

### Design Principles
- One STIG per script
- Minimal, readable code
- No external modules
- Direct policy or registry configuration
- No reboot unless explicitly required by the STIG
- Optional verification output

---

## Usage

Run PowerShell **as Administrator**.

Example:
```powershell
.\__remediation_template(STIG-ID-WN11-CC-000370).ps1
```

After applying multiple STIGs, optionally refresh policy:
```powershell
gpupdate /force
```

## Notes

- Domain Group Policy may override local settings
- Some STIGs may be Not Applicable (NA) depending on environment
- Password and account policy changes do not affect existing credentials until updated

## Purpose

This repository is intended for:
- STIG compliance practice
- Security hardening labs
- Learning Windows and Linux security policy internals
- Automation building blocks
- Portfolio demonstration of security and system administration skills

## Status

🚧 Actively expanding
- Windows 11 STIG remediation in progress
- Linux STIGs planned (RHEL, Ubuntu)
