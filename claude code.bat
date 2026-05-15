@echo off
:: Request admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell start -Verb RunAs '%0'
    exit /b
)

setlocal enabledelayedexpansion

:: Set window size (rows columns)
mode con: cols=36 lines=14
title Claude Code
color a

:: Check Ollama
where ollama >nul 2>&1
if !errorlevel! neq 0 (
    echo Ollama is not installed.
    set /p "installOllama=Do you want to install Ollama now? (Y/N): "
    if /I "!installOllama!"=="Y" (
        powershell -Command "irm https://ollama.com/install.ps1 | iex"
        echo Ollama installation attempted. Please restart your terminal if needed.
        pause
    )
)

:: Check Claude
where claude >nul 2>&1
if !errorlevel! neq 0 (
    echo Claude is not installed.
    set /p "installClaude=Do you want to install Claude now? (Y/N): "
    if /I "!installClaude!"=="Y" (
        powershell -Command "irm https://claude.ai/install.ps1 | iex"
        echo Claude installation attempted.
        echo.
        echo IMPORTANT: Claude is not automatically added to your PATH.
        echo Please follow these steps to add it manually:
        echo 1. Search Windows for "System Environment Variables"
        echo 2. Click "Environment Variables..."
        echo 3. Select "Path" under System variables and click Edit
        echo 4. Click New and add: C:\Users\%USERNAME%\.local\bin
        echo 5. Click New again and add: C:\Users\%USERNAME%\.claude
        echo 6. Save and restart your terminal
        pause
    )
)

:MENU
cls
echo   ================================
echo         Claude Code Menu
echo   ================================
echo     --Select Your Provider--
echo.
echo       1. Gemma4
echo       2. MiniMax-m2.5 (Best)
echo       3. DeepSeek-v4-flash
echo       4. Nemotron-3-Super
echo       5. Exit
echo.
echo   ================================
set /p "choice=Enter your choice (1-5): "

if "!choice!"=="1" (
    call :RunFullscreen ollama launch claude --model gemma4:31b-cloud
    goto MENU
)
if "!choice!"=="2" (
    call :RunFullscreen ollama launch claude --model minimax-m2.5:cloud
    goto MENU
)
if "!choice!"=="3" (
    call :RunFullscreen ollama launch claude --model deepseek-v4-flash:cloud
    goto MENU
)
if "!choice!"=="4" (
    call :RunFullscreen ollama launch claude --model nemotron-3-super:cloud
    goto MENU
)
if "!choice!"=="5" (
    exit
)

echo Invalid choice, try again.
pause
goto MENU

:RunFullscreen
:: Make window fullscreen and run command
mode con: cols=1000 lines=1000
color 0B
powershell -command "& { $host.ui.RawUI.WindowSize = $host.ui.RawUI.MaxPhysicalWindowSize }"
cls
echo Starting Claude in fullscreen mode...
echo.
echo To exit the Claude, press Ctrl+C [twice] or close the window.
echo.
cls
echo Loading Claude.
timeout /t 1 /nobreak >nul
cls
echo Loading Claude. .
timeout /t 1 /nobreak >nul
cls
echo Loading Claude. . .
timeout /t 1 /nobreak >nul
cls
echo Calling Server.
timeout /t 1 /nobreak >nul
cls
echo Calling Server. .
timeout /t 1 /nobreak >nul
cls
echo Calling Server. . .
timeout /t 1 /nobreak >nul
cls
echo Measuring Screen.
timeout /t 1 /nobreak >nul
cls
echo Measuring Screen. .
timeout /t 1 /nobreak >nul
cls
echo Measuring Screen. . .
timeout /t 1 /nobreak >nul
cls
echo Clearing Screen To Start Claude Code.
timeout /t 1 /nobreak >nul
cls
echo Clearing Screen To Start Claude Code. .
timeout /t 1 /nobreak >nul
cls
echo Clearing Screen To Start Claude Code. . .
timeout /t 1 /nobreak >nul
cls
echo Launching Claude Code Wait Few Sec. Enjoy Free Claude Code
timeout /t 5 /nobreak >nul
cls
%*
echo.
echo Claude session ended. Press any key to return to menu...
pause >nul
:: Reset window size
title Claude Code
color a
mode con: cols=36 lines=14
goto :eof