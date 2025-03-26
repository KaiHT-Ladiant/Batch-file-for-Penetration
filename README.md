# Batchfiles for Penetration Testing
**Advanced Windows automation toolkit for cybersecurity professionals**

## 📋 Table of Contents
1. [Repository Overview](#-repository-overview)
2. [Script Catalog](#-script-catalog)
3. [Installation](#-installation)
4. [Usage Guide](#-usage-guide)
5. [Technical Details](#-technical-details)
6. [Troubleshooting](#-troubleshooting)
7. [Contributing](#-contributing)
8. [License](#-license)

## 📦 Repository Overview
This collection of 7 specialized Windows batch scripts is designed to assist penetration testers, security auditors, and IT professionals in various tasks related to system configuration, vulnerability assessment, and network analysis.

### Key Features:
- Automated proxy configuration
- Developer tool access shortcuts
- Network and database port scanning
- Browser cache management
- Historical vulnerability cross-referencing
- SSL/TLS cipher suite analysis

## 🛠️ Script Catalog

| Script Name | Primary Function | Key Requirements |
|-------------|------------------|-------------------|
| `Host PC Proxy Set (FORCED).bat` | Enforces proxy settings via registry | Admin rights |
| `Create Developer's Tool for MS Edge.bat` | Generates IE Mode shortcuts | MS Edge / Google Chrome |
| `Default Database Port Scanning.bat` | Scans for common database ports | Nmap |
| `chromeCache Clearer.bat` | Purges Chrome browser cache | Chrome must be closed |
| `openPort Scanner.bat` | Performs comprehensive port scans | Network access |
| `Searching Previous Vulnerabilities.bat` | Checks against vulnerability database | Local vuln DB file |
| `HTTPS Protocol Ciphers Scanner.bat` | Analyzes SSL/TLS configurations | OpenSSL |

## 💾 Installation

1. Clone the repository:
```git
git clone https://github.com/KaiHT-Ladiant/Batch-file-for-Penetration.git
```
2. Navigate to the script directory:
```powershell
cd Batch-file-for-Penetration
```
3. Ensure all dependencies are installed:   
- Nmap: `choco install nmap -y`
- OpenSSL: `choco install openssl -y`

## 🚀 Usage Guide   
### Host PC Proxy Set (FORCED)
Bypasses Windows restrictions to set proxy settings.   
```powershell
C:> HostPC_Proxy-Set.bat.bat
┌───────────────────────────────────┒
│ Proxy Force Settings Batch Files  ┃
│ Create By Kai_HT : RedSec         ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Do u Want Custom PortNumber? - Default Portnumber is 8800(Y/N): Y
Setting Proxy Port: 5678
Pause Any Button, Start...

Proxy Settings Complete..
Do you want Turn it on?(Y/N) : Y
Proxy turnOn the End.
Do you want EXIT? (Y/N): Y
```
### Create Developer's Tool for MS Edge   
Creates desktop shortcuts for IE Mode in Edge and IE Tab in Chrome.
```batch
C:> Developer-Tools_Create-DirectLinks.bat.bat
┌───────────────────────────────────┒
│ Proxy Force Settings Batch Files  ┃
│ Create By Kai_HT : RedSec         ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Link is allready.
```
### Default Database Port Scanning
Scans for commonly used database ports using Nmap.
```batch
┌───────────────────────────────────────────────────┒
│              DB Default Port Scanning             ┃
│               Scripting From Kai_HT               ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛


───────────────────────────────
What is scanning target? (Input Domain Name): [TargetDomain]


───────────────────────────────
Scanning All Ready

───────────────────────────────
Scanning Start
[DBS-01] MySQL Port Scanning

───────────────────────────────
[DBS-02]_01 MS-SQL Port Scanning

───────────────────────────────

...
───────────────────────────────
DB Port Scanning is End.
```
### Chrome Cache Clearer
Completely purges the Google Chrome browser cache.
```batch
┌───────────────────────────────────┒
│ ChromeCache Clearer               ┃
│ Create By Kai_HT : RedSec         ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
[*] Chrome Cache Clear Finished.
```

### Open Port Scanner
Performs a comprehensive port scan on a target IP or network range.
```batch
┌───────────────────────────────────────────┒
│             Open Port Scanning            ┃
│           Scripting From Kai_HT           ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

Scan Site OpenPort Information
Input Scanning Sitename: [YourDomain]
```
### Searching Previous Vulnerabilities
Cross-references against a local vulnerability database.
```batch
┌──────────────────────────────────────────────────┒
│          Check Previous Vulnerabilities          ┃
│               Scripting From Kai_HT              ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

Enter a vulnerability code: [Ex.WEB-SER-001]
Searching for directories containing WEB-SER-001...
Found: /Kai_HT-Ladiant

Search completed.
```
### HTTPS Protocol Ciphers Scanner
Analyzes the SSL/TLS cipher suites supported by a target server.
```batch
┌───────────────────────────────────────────────────┒
│               HTTPS Ciphers Scanning              ┃
│               Scripting From Kai_HT               ┃
┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

───────────────────────────────
What is scanning target? (Input Domain Name): example.com

───────────────────────────────
Scanning All Ready


───────────────────────────────
Scanning Start

[WEB-SER-035] %domainName% Protocols Scanning

...
───────────────────────────────
HTTPS Protocol Scanning is End.
```
## ⚙️ Technical Details

### System Requirements
- Windows 10 or Windows 11
- PowerShell 5.1 or later
- .NET Framework 4.5+

### Execution Policy
To allow script execution, you may need to adjust the PowerShell execution policy:   
```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```
### Dependencies
- Nmap: Network scanning and discovery
- OpenSSL: SSL/TLS analysis
- Chrome/Edge: For browser-related scripts

## 🔍 Troubleshooting

| Issue | Solution |
|-------|----------|
| "Access Denied" errors | Run scripts as Administrator |
| Nmap command not found | Add Nmap to system PATH or use full path |
| OpenSSL errors | Ensure OpenSSL is correctly installed and in PATH |
| Chrome cache clearing fails | Ensure all Chrome processes are terminated |

## 🤝 Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository
2. Create a new branch: `git checkout -b feature-branch`
3. Make your changes and commit: `git commit -am 'Add new feature'`
4. Push to the branch: `git push origin feature-branch`
5. Submit a pull request

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Disclaimer:** These tools are for educational and authorized testing purposes only. Misuse of these scripts may be illegal. Always obtain proper authorization before testing on systems you do not own.

