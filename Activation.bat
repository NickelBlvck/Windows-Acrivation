@echo off
:: Проверка на администратора
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Start with Admin...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~dpnx0' -Verb RunAs"
    exit /b
)

:: Основная команда
echo exec command,please wait...
powershell -Command "irm https://get.activated.win | iex"
pause