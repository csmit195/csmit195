@echo off
setlocal
cd /d "%~dp0"

:: --- FIND INKSCAPE CLI ---
set "INK=C:\Program Files\Inkscape\bin\inkscape.com"

if not exist "%INK%" (
    echo [FATAL] Inkscape CLI not found.
    pause
    exit /b
)

echo [START] Converting to PNG (Native Mode) - Running in parallel...

:: Start all conversions in parallel
start /B "" "%INK%" "header.svg" --export-type=png -o "header.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "cs2_info.svg" --export-type=png -o "cs2_info.png" --export-width=720 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "cs2_btn.svg" --export-type=png -o "cs2_btn.png" --export-width=240 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "uni_info.svg" --export-type=png -o "uni_info.png" --export-width=720 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "uni_btn.svg" --export-type=png -o "uni_btn.png" --export-width=240 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "payments.svg" --export-type=png -o "payments.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "tos.svg" --export-type=png -o "tos.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "testimonials.svg" --export-type=png -o "testimonials.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
start /B "" "%INK%" "footer.svg" --export-type=png -o "footer.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255

:: Wait for all inkscape processes to complete
:wait_loop
timeout /t 1 /nobreak >nul 2>&1
tasklist /FI "IMAGENAME eq inkscape.com" 2>nul | find /I /N "inkscape.com">nul
if "%ERRORLEVEL%"=="0" goto wait_loop

echo - header.png
echo - cs2_info.png
echo - cs2_btn.png
echo - uni_info.png
echo - uni_btn.png
echo - payments.png
echo - tos.png
echo - testimonials.png
echo - footer.png

echo.
echo [DONE]
pause