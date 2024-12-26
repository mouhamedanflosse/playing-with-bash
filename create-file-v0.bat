@echo off
set "filePath=C:\path\to\directory\newfile.txt"

if not exist "%filePath%" (
    echo. > "%filePath%"  ; Create the file
    echo File created at %filePath%.
) else (
    echo File already exists.
)

start "" "%filePath%" ; Open the file
pause
