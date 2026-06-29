@echo off
title PDEA Release Publisher

echo.
echo === PDEA Release Publisher ===
echo.

set /p VERSION="Enter version (e.g., 1.6.3): "

if "%VERSION%"=="" (
  echo Version cannot be empty!
  pause
  exit /b 1
)

set EXE_PATH=..\PDEA\dist-installer\PDEA-Setup-%VERSION%.exe
echo Looking for: %EXE_PATH%
echo.

if not exist "%EXE_PATH%" (
  echo File not found at default location.
  set /p EXE_PATH="Enter full path to the EXE file: "
  if "%EXE_PATH%"=="" (
    pause
    exit /b 1
  )
)

echo.
echo Creating release v%VERSION% ...
echo.

copy /y "%EXE_PATH%" "%TEMP%\PDEA-Setup.exe" >nul

gh release create v%VERSION% "%TEMP%\PDEA-Setup.exe" --repo Babar-Meet/PDEA-dist --title "PDEA v%VERSION%" --notes "## PDEA v%VERSION%"

del "%TEMP%\PDEA-Setup.exe" >nul 2>&1

if %ERRORLEVEL% EQU 0 (
  echo.
  echo Done! Release v%VERSION% created.
  echo https://github.com/Babar-Meet/PDEA-dist/releases/tag/v%VERSION%
) else (
  echo.
  echo Failed to create release.
)

echo.
pause
