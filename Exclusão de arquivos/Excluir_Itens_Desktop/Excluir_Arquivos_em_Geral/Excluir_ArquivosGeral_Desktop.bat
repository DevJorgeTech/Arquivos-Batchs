for %%B in ("C:\Users\jwagner\Desktop\*") do (
    if not "%%~xB"==".lnk" (
        del /s "%%B" 2>nul
    )
)

pause