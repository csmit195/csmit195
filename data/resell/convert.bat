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

echo [START] Converting to PNG (Native Mode)...

"%INK%" "header.svg" --export-type=png -o "header.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
echo - header.png

"%INK%" "cs2_info.svg" --export-type=png -o "cs2_info.png" --export-width=720 --export-background="#181818" --export-background-opacity=255
echo - cs2_info.png

"%INK%" "cs2_btn.svg" --export-type=png -o "cs2_btn.png" --export-width=240 --export-background="#181818" --export-background-opacity=255
echo - cs2_btn.png

"%INK%" "uni_info.svg" --export-type=png -o "uni_info.png" --export-width=720 --export-background="#181818" --export-background-opacity=255
echo - uni_info.png

"%INK%" "uni_btn.svg" --export-type=png -o "uni_btn.png" --export-width=240 --export-background="#181818" --export-background-opacity=255
echo - uni_btn.png

"%INK%" "payments.svg" --export-type=png -o "payments.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
echo - payments.png

"%INK%" "tos.svg" --export-type=png -o "tos.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
echo - tos.png

"%INK%" "testimonials.svg" --export-type=png -o "testimonials.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
echo - testimonials.png

"%INK%" "footer.svg" --export-type=png -o "footer.png" --export-width=1000 --export-background="#181818" --export-background-opacity=255
echo - footer.png

echo.
echo [DONE]
pause