for /d %%A in (C:\Users\jwagner\Desktop\*) do (
    if /I not "%%~nxA"=="Principal" (
        rd /s /q "%%A" 2>nul
    )
)

pause