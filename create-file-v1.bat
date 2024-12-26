@echo off

rem Set the notes directory
set notespath=C:\path\to\notes\

rem Create the directory if it doesn't exist
if not exist "%notespath%" (
    mkdir "%notespath%"
)

rem Get the current time and sanitize it
set rawtime=%time%
set sanitizedtime=%rawtime::=-%
set sanitizedtime=%sanitizedtime:.=-%

rem Log the sanitized time for verification
echo Raw Time: %rawtime% >> "%notespath%\logfile.txt"
echo Sanitized Time: %sanitizedtime% >> "%notespath%\logfile.txt"

rem Generate a filename with the sanitized time
set filename=%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%sanitizedtime:~0,2%-%sanitizedtime:~3,2%.txt
set filepath=%notespath%%filename%

rem Create the file if it doesn't exist
if not exist "%filepath%" (
    echo. > "%filepath%"
    echo File created: %filepath%
    echo File created at %sanitizedtime% >> "%notespath%\logfile.txt"
) else (
    echo File already exists: %filepath%
    echo File already existed at %sanitizedtime% >> "%notespath%\logfile.txt"
)

rem Open the file
start "" "%filepath%"
