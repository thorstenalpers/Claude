@echo off
REM Stoppt und deaktiviert den Claude Cowork VM-Dienst (CoworkVMService).
REM Muss als Administrator ausgefuehrt werden. Umkehrbar mit enable-cowork.bat.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Bitte als Administrator ausfuehren ^(Rechtsklick ^> Als Administrator^).
    pause
    exit /b 1
)

echo Stoppe CoworkVMService...
sc stop CoworkVMService

echo Setze Starttyp auf Deaktiviert...
sc config CoworkVMService start= disabled

echo.
echo Fertig. Status:
sc query CoworkVMService | findstr /i "STATE"
pause
