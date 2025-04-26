@echo off
setlocal

REM Папка ярлыков
set SHORTCUT_DIR=%USERPROFILE%\Desktop

set SCRIPT1=%~dp0preset_russia_youtube_discord.cmd
set SCRIPT2=%~dp0preset_russia_discord.cmd

set ICON1=%~dp0zapret_discord_youtube.ico
set ICON2=%~dp0zapret_discord.ico

powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%SHORTCUT_DIR%\Zapret YouTube+Discord.lnk');$s.TargetPath='%SCRIPT1%';$s.IconLocation='%ICON1%';$s.Save()"

powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%SHORTCUT_DIR%\Zapret Discord.lnk');$s.TargetPath='%SCRIPT2%';$s.IconLocation='%ICON2%';$s.Save()"

echo Shortcuts are created on the desktop.
pause
endlocal
