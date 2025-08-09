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
