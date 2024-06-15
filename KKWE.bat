@echo off
set currentbatpathalri=%~dp0
if exist game.dll goto skiperrormsg
tasklist /FI "IMAGENAME eq 'warcraft iii.exe'" 2>NUL | find /I /N "warcraft iii.exe">NUL 
%SystemRoot%\Sysnative\msg.exe "%username%" you put the files and folder in wrong location. it must at the same folder as frozen throne.exe or game.dll and only works for war3 version 1.27a and must replace/overwrite old/existing files!
exit
:skiperrormsg
for /f "delims=" %%a in (kkwe\disableinitmsg.txt) do set "disableinitmsg=%%a"
REM echo "%disableinitmsg%"
REM pause
IF "%disableinitmsg%"=="" (
START CMD /C "ECHO this plugin is to play map that was made for kk platform aka chinese war3 blizzard. you should setup your profile. its not required but a must if you want unlock locked skin or hero or item or to save map progress or point, because most kk platform map stored player map data in server. To unlock that map feature you should create the profile in shuen website by clicking register, then create the profile, make sure it doesnt say profile already exist. after done create your profile, copy your profile name and password from shuen website to shuen dzapi server login form then click login. if proflle exist but password wrong the player map data wont be saved into server but you still load that profile data. you can redo this by open @set ShuenDzapiServerLogin127.bat . if you have problem like crash or slow etc try different option in kkwe folder you can open these .bat you can disable this msg by open disableinitmsg.bat && PAUSE" 
)

if NOT exist DzAPI_ServerDataOnly.ini ( 


REM call "ShuenDzapiServerLogin127.bat"
call start cmd /c "ShuenDzapiServerLogin127.bat"
pause
goto skiperrormsg
)
REM call start cmd /c "@set ShuenDzapiServerLogin127.bat"


REM rename "dzapi.mix" "dzapi.mix.backup"
REM set width=1366
REM set height=768
REM set colordepth=32
REM set hz=60
REM set maxfps=60

chcp 65001>NUL
REM echo ------------------------
REM echo LIST OF LOADED MOD FILES
REM echo ------------------------
REM for /f "delims=" %%f in ('dir /b "mix or asi files"') do (
REM if exist %%f (
    REM echo %%f
REM ) else (
REM echo %%f doesnt exist in your warcraft folder we auto fixing it for you ONLY WORKS IF RUN AS ADMIN
    REM mklink "%%f" "mix or asi files\%%f"
REM )
REM )
REM echo ------------------------
REM if exist d3d8.dll (
REM echo auto fixing cant start error in gameranger by rename d3d8.dll temporary cuz rgc keep adding this anti dll inject file
REM rename "d3d8.dll" "d3d8.dll.backup"
REM )
set war3registrypath=HKEY_CURRENT_USER\Software\Blizzard Entertainment\Warcraft III

REM tasklist /FI "IMAGENAME eq WFEApp.exe" 2>NUL | find /I /N "WFEApp.exe">NUL 
REM if %ERRORLEVEL%==0 goto skipopenwfe
REM wmic process where name='WFEApp.exe' delete
REM start /d "%~dp0kkwe\wfe" "" "kkwe\wfe\WFEApp.exe"
REM :skipopenwfe
REM REG ADD "%war3registrypath%\Video" /v reswidth /t REG_DWORD /d %width% /f
REM REG ADD "%war3registrypath%\Video" /v resheight /t REG_DWORD /d %height% /f
REM REG ADD "%war3registrypath%\Video" /v colordepth /t REG_DWORD /d %colordepth% /f
REM REG ADD "%war3registrypath%\Video" /v cinematicbpp /t REG_DWORD /d %colordepth% /f
REM REG ADD "%war3registrypath%\Video" /v texcolordepth /t REG_DWORD /d %colordepth% /f
REM REG ADD "%war3registrypath%\Video" /v windowwidth /t REG_DWORD /d %width% /f
REM REG ADD "%war3registrypath%\Video" /v windowheight /t REG_DWORD /d %height% /f
REM REG ADD "%war3registrypath%\Video" /v cinematicwidth /t REG_DWORD /d %width% /f
REM REG ADD "%war3registrypath%\Video" /v cinematicheight /t REG_DWORD /d %height% /f
REM REG ADD "%war3registrypath%\Video" /v cinematicoverrides /t REG_DWORD /d %hz% /f
REM REG ADD "%war3registrypath%\Video" /v cinematicrefresh /t REG_DWORD /d %hz% /f
REM REG ADD "%war3registrypath%\Video" /v refreshrate /t REG_DWORD /d %hz% /f
REM REG ADD "%war3registrypath%\Video" /v maxfps /t REG_DWORD /d %maxfps% /f
REM timeout /t 3

REM for /F "skip=1 delims=" %%F in ('
    REM wmic PATH Win32_LocalTime GET Day^,Month^,Year /FORMAT:TABLE
REM ') do (
    REM for /F "tokens=1-3" %%L in ("%%F") do (
        REM set CurrDay=0%%L
        REM set CurrMonth=0%%M
        REM set CurrYear=%%N
    REM )
REM )
REM set CurrDay=%CurrDay:~-2%
REM set CurrMonth=%CurrMonth:~-2%

REM set CUR_YYYY=%date:~10,4%
REM set CUR_MM=%date:~4,2%
REM set CUR_DD=%date:~7,2%
REM set CUR_HH=%time:~0,2%
REM if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

REM set CUR_NN=%time:~3,2%
REM set CUR_SS=%time:~6,2%
REM set CUR_MS=%time:~9,2%
REM chcp 65001>NUL
REM set "timealri=%CUR_HH%։%CUR_NN%։%CUR_SS%"

REM set "datealri= %CurrYear% ∕ M%CurrMonth% ∕ D%CurrDay% %timealri%"

REM for /f "delims=" %%a in (kkwe\noDesyncmode.txt) do set "noDesyncmode=%%a"
REM IF "%noDesyncmode%"=="1" (
REM echo moving dz_w3_plugin.ini to prevent desync
REM if not exist "dz_w3_plugin.inibackup" md "dz_w3_plugin.inibackup"
REM if not exist "dz_w3_plugin.inibackup\dz_w3_plugin.ini%datealri%" md "dz_w3_plugin.inibackup\dz_w3_plugin.ini%datealri%"

REM move dz_w3_plugin.ini "dz_w3_plugin.inibackup\dz_w3_plugin.ini%datealri%\dz_w3_plugin.ini"
REM )
echo changing warcraft iii InstallPath to 1.27a
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%" /v InstallPath') do set "installpath=%%b"
IF NOT "%installpath%"=="%currentbatpathalri%\" (
echo path is wrong. this bat file will autofixing..
REG ADD "%war3registrypath%" /v InstallPath /t REG_SZ /d "%currentbatpathalri%\" /f
)
REM FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\String" /v userbnet') do set "bnetName=%%b"

for /f "delims=" %%a in (kkwe\LANname.txt) do set "LanName=%%a"
IF "%LanName%"=="" (
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\String" /v userlocal') do set "LanName=%%b"
)

echo auto change name in Local Area Network based on lanname.txt in kkwe folder for 1.27 non gameranger
REM REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d " %LanName%" /f

FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\String" /v userbnet') do set "oldbnetname=%%b"
REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d " %LanName%" /f
REM echo downloading dz_w3_plugin.ini to prevent desync
REM kkwe\curl-portable-7.67.0\curl -O https://raw.githubusercontent.com/yaminogun/dzapi/main/dz_w3_plugin.ini
REM kkwe\curl-portable-7.67.0\curl -O https://docs.google.com/document/d/1Tqjt32h8NZRSYsBSRqqJba7jRiYEyzYBkR01v-wU8nw/edit?usp=sharing
REM kkwe\curl-portable-7.67.0\curl -O https://docs.google.com/document/d/1Tqjt32h8NZRSYsBSRqqJba7jRiYEyzYBkR01v-wU8nw/export?exportFormat=txt
REM curl -L 'https://docs.google.com/spreadsheets/d/<LONG-UGLY-CODE>/export?exportFormat=csv' -o my_sheet.csv
REM kkwe\curl-portable-7.67.0\curl -L https://docs.google.com/document/d/1Tqjt32h8NZRSYsBSRqqJba7jRiYEyzYBkR01v-wU8nw/export?exportFormat=txt -o dz_w3_plugin.ini
REM kkwe\curl-portable-7.67.0\curl -O https://docs.google.com/document/u/0/export?format=txt&id=1Tqjt32h8NZRSYsBSRqqJba7jRiYEyzYBkR01v-wU8nw&token=AC4w5ViOOSJezeckhJlng6HBz1EMj5B5bw%3A1718065908780&includes_info_params=true&usp=docs_home&cros_files=false&inspectorResult=%7B%22pc%22%3A1%2C%22lplc%22%3A1%7D
REM pause
REM start "New Window" cmd /c closewar3timer.bat
REM START /wait notepad.exe 

echo backup LastReplay.w3g before starting war3
if not exist "Replay\LastReplayAutoBackupAlri" md "Replay\LastReplayAutoBackupAlri"
REM set lastModificationSeconds=$(date -r path/to/file +%s)
REM set currentSeconds=$(date +%s)
REM ((elapsedSeconds = currentSeconds - lastModificationSeconds))
FOR %%? IN ("Replay\LastReplay.w3g") DO (
    REM ECHO File Name Only       : %%~n?
    REM ECHO File Extension       : %%~x?
    REM ECHO Name in 8.3 notation : %%~sn?
    REM ECHO File Attributes      : %%~a?
    REM ECHO Located on Drive     : %%~d?
    REM ECHO File Size            : %%~z?
    REM ECHO Last-Modified Date   : %%~t?
	set FileLastModifiedDate=%%~t?
    REM ECHO Drive and Path       : %%~dp?
    REM ECHO Drive                : %%~d?
    REM ECHO Fully Qualified Path : %%~f?
    REM ECHO FQP in 8.3 notation  : %%~sf?
    REM ECHO Location in the PATH : %%~dp$PATH:?
)
REM forfiles /m "Replay\LastReplay.w3g" /c "cmd /c ECHO The last modified date of: @file is: @ftime"
REM pause
set CUR_YYYY=%FileLastModifiedDate:~6,4%
set CUR_MM=%FileLastModifiedDate:~3,2%
set CUR_DD=%FileLastModifiedDate:~0,2%
set CUR_HH=%FileLastModifiedDate:~11,2%
set CUR_NN=%FileLastModifiedDate:~14,2%
set CUR_SS=%time:~6,2%
set "FileLastModifiedDateWar3126Format=%CUR_YYYY%.M%CUR_MM%.D%CUR_DD%.%CUR_HH%.%CUR_NN%.%CUR_SS%"
REM echo %datealri33%
REM echo %FileLastModifiedDate%
REM pause
if not exist "Replay\LastReplayAutoBackupAlri" md "Replay\LastReplayAutoBackupAlri"
move Replay\LastReplay.w3g "Replay\LastReplayAutoBackupAlri\%FileLastModifiedDateWar3126Format%.w3g"

echo starting war3 1.27a with kkwe
REM cd kkwe\bin\
REM "YDWEConfig.exe" -launchwar3
REM startydwealri.bat
REM pause
REM start /d "%~dp0kkwe" "" "kkwe\bin\YDWEConfig.exe" -launchwar3
start /d "%~dp0kkwe" "" "KKWE\bin\YDWEConfig.exe" -launchwar3
REM timeout /t 4
echo auto change name in Local Area Network based on lanname.txt in kkwe folder for gameranger

:loopchecklannam
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\String" /v userlocal') do set "ydweName=%%b"
REM echo name is "%ydweName%"
REM IF "%ydweName%"=="" goto skipsetlanname
echo "%ydweName%"
IF NOT "%ydweName%"=="%LanName%" (
echo name not right
REG ADD "%war3registrypath%\String" /v userlocal /t REG_SZ /d "%LanName%" /f
REM timeout /t 1
goto loopchecklannam
)
echo restoring old bnetname
REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d "%oldbnetname%" /f
REM :skipsetlanname
REM pause
REM echo backup ghost.log before sstart ghost.exe
REM if not exist "ghostpp-master\ghostbotlogbackupalri" md "ghostpp-master\ghostbotlogbackupalri"
REM if not exist "ghostpp-master\ghostbotlogbackupalri\ghost.log%datealri%" md "ghostpp-master\ghostbotlogbackupalri\ghost.log%datealri%"
REM wmic process where name='ghost.exe' delete
REM move ghostpp-master\ghost.log "ghostpp-master\ghostbotlogbackupalri\ghost.log%datealri%\ghost.log"
REM echo starting ghost.exe
REM FOR /F "tokens=*" %%i IN (gHostBot1.27_path.txt) DO start ""  /D "%%i" "%%i\Ghost.exe"


echo auto fixing crash when click option inside warcraft
REG ADD "%war3registrypath%\Video" /v spellfilter /t REG_DWORD /d 2 /f

echo auto fixing cannot host in gameranger
REG ADD "%war3registrypath%\Gameplay" /v netgameport /t REG_DWORD /d 6112 /f

REM echo auto change light to high cuz older wfe autochange light to low on war3 1.28
REM REG ADD "%war3registrypath%\Video" /v lights /t REG_DWORD /d 2 /f

echo auto change model quality to high to prevent stuck at loading and crash on some map cuz of some model and texture bug
REG ADD "%war3registrypath%\Video" /v modeldetail /t REG_DWORD /d 2 /f

echo auto change texture quality to high
REG ADD "%war3registrypath%\Video" /v texquality /t REG_DWORD /d 2 /f
echo "%oldbnetname%"
echo "%lanname%"
if NOT exist nodelete (goto) 2>nul & del "%~f0"
timeout /t 5
REM echo restoring old bnetname
REM REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d "%oldbnetname%" /f
REM REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d "%bnetName%" /f
timeout /t 120


REM echo rename d3d8 back
REM rename "d3d8.dll.backup" "d3d8.dll"
taskkill /F /IM "warcraft iii.exe"
