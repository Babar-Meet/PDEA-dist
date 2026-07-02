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
set ZIP_PATH=..\PDEA\dist-installer\PDEA-%VERSION%-win.zip

echo Looking for:
echo   EXE: %EXE_PATH%
echo   ZIP: %ZIP_PATH%
echo.

if not exist "%EXE_PATH%" (
  echo EXE not found at default location.
  set /p EXE_PATH="Enter full path to the EXE file: "
  if "%EXE_PATH%"=="" (
    pause
    exit /b 1
  )
)

if not exist "%ZIP_PATH%" (
  echo ZIP not found at default location.
  set /p ZIP_PATH="Enter full path to the ZIP file: "
  if "%ZIP_PATH%"=="" (
    pause
    exit /b 1
  )
)

echo.
echo Creating release v%VERSION% ...
echo.

copy /y "%EXE_PATH%" "%TEMP%\PDEA-Setup.exe" >nul
copy /y "%ZIP_PATH%" "%TEMP%\PDEA-Portable.zip" >nul

gh release create v%VERSION% "%TEMP%\PDEA-Setup.exe" "%TEMP%\PDEA-Portable.zip" --repo Babar-Meet/PDEA-dist --title "PDEA v%VERSION%" --notes "## PDEA v%VERSION%"

del "%TEMP%\PDEA-Setup.exe" >nul 2>&1
del "%TEMP%\PDEA-Portable.zip" >nul 2>&1

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
