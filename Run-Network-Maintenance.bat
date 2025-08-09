@echo off
REM Network Maintenance and Vulnerability Assessment Suite
REM Run this batch file as Administrator

echo ====================================
echo Network Maintenance & Security Suite
echo ====================================
echo.

REM Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ERROR: This script must be run as Administrator!
    echo Right-click this file and select "Run as administrator"
    pause
    exit /b 1
)

echo Running as Administrator - OK
echo.

:MENU
echo Please select an option:
echo 1. Run Network Cache Cleanup and Basic Vulnerability Check
echo 2. Run Advanced Network Vulnerability Scanner
echo 3. Run Both Scripts (Recommended)
echo 4. View Previous Reports
echo 5. Exit
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto BASIC_SCAN
if "%choice%"=="2" goto ADVANCED_SCAN
if "%choice%"=="3" goto BOTH_SCANS
if "%choice%"=="4" goto VIEW_REPORTS
if "%choice%"=="5" goto EXIT
echo Invalid choice. Please try again.
echo.
goto MENU

:BASIC_SCAN
echo.
echo Starting Network Cache Cleanup and Basic Vulnerability Check...
echo.
powershell -ExecutionPolicy Bypass -File "%~dp0Network-Maintenance-Script.ps1"
echo.
echo Basic scan completed! Check the logs in C:\Logs\NetworkMaintenance\
pause
goto MENU

:ADVANCED_SCAN
echo.
echo Starting Advanced Network Vulnerability Scanner...
echo This may take several minutes depending on your network size.
echo.
powershell -ExecutionPolicy Bypass -File "%~dp0Advanced-Vulnerability-Scanner.ps1"
echo.
echo Advanced scan completed!
pause
goto MENU

:BOTH_SCANS
echo.
echo Running comprehensive network maintenance and security assessment...
echo This will take several minutes to complete.
echo.
echo Step 1: Network Cache Cleanup and Basic Checks...
powershell -ExecutionPolicy Bypass -File "%~dp0Network-Maintenance-Script.ps1"
echo.
echo Step 2: Advanced Vulnerability Scanning...
powershell -ExecutionPolicy Bypass -File "%~dp0Advanced-Vulnerability-Scanner.ps1"
echo.
echo All scans completed!
echo - Network maintenance logs: C:\Logs\NetworkMaintenance\
echo - Vulnerability reports: C:\SecurityReports\
pause
goto MENU

:VIEW_REPORTS
echo.
echo Opening report directories...
if exist "C:\Logs\NetworkMaintenance" (
    explorer "C:\Logs\NetworkMaintenance"
) else (
    echo No basic maintenance logs found.
)

if exist "C:\SecurityReports" (
    explorer "C:\SecurityReports"
) else (
    echo No vulnerability reports found.
)
pause
goto MENU

:EXIT
echo.
echo Exiting...
exit /b 0
