for /d %%A in ("%USERPROFILE%\Desktop\*") do (
    if /I not "%%~nxA"=="NomeDaPastaQueNãoDeveSerExcluída" (
        rd /s /q "%%A" 2>nul
    )
)

pause