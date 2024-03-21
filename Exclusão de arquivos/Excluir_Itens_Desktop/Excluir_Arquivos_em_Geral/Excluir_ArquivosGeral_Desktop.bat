for %%B in ("%USERPROFILE%\Desktop\*") do (
    if not "%%~xB"==".lnk" (
        del /s "%%B" 2>nul
    )
)

pause