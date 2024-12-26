rem %date:~-4,4%-%date:~-7,2%-%date:~-10,2%
rem @echo off
rem setx idk %time::=1% /M
rem echo %idk%


rem Create the file if it doesn't exist
if not exist "C:\Users\my\Documents\notes\general-notes\%date:~-4,4%-%date:~-7,2%-%date:~-10,2%-afs-note.txt" (
    echo. > "C:\Users\my\Documents\notes\general-notes\%date:~-4,4%-%date:~-7,2%-%date:~-10,2%-afs-note.txt"
    echo File created: %date:~-4,4%-%date:~-7,2%-%date:~-10,2%-afs-note
    echo File created at \general-notes >> "C:\Users\my\Documents\notes\general-notes\%date:~-4,4%-%date:~-7,2%-%date:~-10,2%-afs-note.txt"
) else (
    echo File already exists: \general-notes
    echo File already existed at \general-notes >> "C:\Users\my\Documents\notes\general-notes\%date:~-4,4%-%date:~-7,2%-%date:~-10,2%-afs-note.txt"
)

rem Open the file
start "" "C:\Users\my\Documents\notes\general-notes\%date:~-4,4%-%date:~-7,2%-%date:~-10,2%-afs-note.txt"