@echo off
REM Macht disable-cowork.bat rueckgaengig: CoworkVMService wieder aktivieren.
REM Muss als Administrator ausgefuehrt werden.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Bitte als Administrator ausfuehren ^(Rechtsklick ^> Als Administrator^).
    pause
    exit /b 1
)

echo Setze Starttyp zurueck auf Automatisch...
sc config CoworkVMService start= auto

echo Starte CoworkVMService...
sc start CoworkVMService

echo.
echo Fertig. Status:
sc query CoworkVMService | findstr /i "STATE"
pause
