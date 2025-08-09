# Net-Maintenance
comprehensive automation suite for network cache clearing and vulnerability checking in an office environment

1. Network-Maintenance-Script.ps1 - Core maintenance script that:
•  Clears DNS, ARP, and NetBIOS caches
•  Resets Winsock catalog and TCP/IP stack  
•  Checks for SMBv1, open ports, firewall status
•  Tests network connectivity
•  Logs all activities with timestamps

2. Advanced-Vulnerability-Scanner.ps1 - Comprehensive security scanner that:
•  Discovers active hosts on your network
•  Scans for vulnerable services (FTP, Telnet, SMB, SQL Server, RDP, etc.)
•  Checks SSL certificate expiration
•  Validates Windows Update status
•  Analyzes security configuration (UAC, password policy, default accounts)
•  Generates HTML and JSON reports

3. Run-Network-Maintenance.bat - Easy-to-use menu interface
•  Administrator privilege checking
•  Interactive menu for running scripts
•  Options to run individual or combined scans
•  Report viewing capabilities


How to Use:

1. Quick Start: Right-click Run-Network-Maintenance.bat → "Run as administrator"
2. Manual: Open PowerShell as admin and run the individual scripts
3. Scheduled: Uncomment the scheduled task section for automated runs

Security Features:

Vulnerability Detection:
•  Critical: Telnet, SMBv1, expiring certificates
•  High: Open SMB/SQL ports, disabled UAC, default accounts
•  Medium: RPC exposure, weak passwords, WinRM over HTTP
•  Low: Configuration improvements

Safe Operations:
•  All cache clearing is non-destructive
•  Comprehensive logging for auditing
•  Network adapter resets are optional
•  Administrator privilege enforcement
