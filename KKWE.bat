@echo off
set currentbatpathalri=%~dp0

if exist storm.dll goto skiperrormsg
tasklist /FI "IMAGENAME eq 'warcraft iii.exe'" 2>NUL | find /I /N "warcraft iii.exe">NUL 
%SystemRoot%\Sysnative\msg.exe "%username%" you put the files and folder in wrong location. it must at the same folder as frozen throne.exe or game.dll and only works for war3 version 1.27a or 1.26a and must replace/overwrite old/existing files!
echo storm.dll not found you put the files and folder in wrong location. it must at the same folder as frozen throne.exe or game.dll and only works for war3 version 1.27a or 1.26a and must replace/overwrite old/existing files!
pause
exit
:skiperrormsg
setlocal
set file="storm.dll"
REM set maxbytesize=13187048
set maxbytesize=339968
REM echo on
FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA
REM pause
REM schooser
Call :YesNoBox "use 1.26a? Yes=1.26a l No=1.27a"
if "%YesNo%"=="7" (
set war3version=127a
move DzAPI.mix "kkwe\war3version\126a\DzAPI.mix"
if %size% EQU %maxbytesize% (
    echo.File is ^< %maxbytesize% bytes
	echo storm.dll is 1.26a
	echo change version to 1.27a
move war3.exe "kkwe\war3version\126a\war3.exe"
move Storm.dll "kkwe\war3version\126a\Storm.dll"
move game.dll "kkwe\war3version\126a\game.dll"
move War3Patch.mpq "kkwe\war3version\126a\War3Patch.mpq"
move DzAPI.mix "kkwe\war3version\126a\DzAPI.mix"

move kkwe\war3version\127a\Storm.dll Storm.dll
move kkwe\war3version\127a\game.dll game.dll
move kkwe\war3version\127a\War3Patch.mpq War3Patch.mpq
move kkwe\war3version\127a\war3.exe war3.exe 
move kkwe\war3version\127a\DzAPI_ServerDataOnly.mix DzAPI_ServerDataOnly.mix
) ELSE (
    echo.File is ^>= %maxbytesize% bytes
	echo storm.dll is 1.27a
	move kkwe\war3version\127a\Storm.dll Storm.dll
move kkwe\war3version\127a\game.dll game.dll
move kkwe\war3version\127a\War3Patch.mpq War3Patch.mpq
move kkwe\war3version\127a\war3.exe war3.exe 
move kkwe\war3version\127a\DzAPI_ServerDataOnly.mix DzAPI_ServerDataOnly.mix
)

goto endofchooser
REM FOR /F "tokens=*" %%i IN (1.27a_path.txt) DO start /d "%%i" "" "%%i\Warcraft III.exe""
REM FOR /F "tokens=*" %%i IN (gHostBot1.27_path.txt) DO start /d "%%i" "" "%%i\ghost.exe""
REM taskkill /F /IM "frozen throne.exe"
exit /b
)
if "%YesNo%"=="6" (
set war3version=126a
move DzAPI_ServerDataOnly.mix "kkwe\war3version\127a\DzAPI_ServerDataOnly.mix"
if %size% EQU %maxbytesize% (
    echo.File is ^< %maxbytesize% bytes
	echo storm.dll is 1.26
move kkwe\war3version\126a\Storm.dll Storm.dll
move kkwe\war3version\126a\game.dll game.dll
move kkwe\war3version\126a\War3Patch.mpq War3Patch.mpq
move kkwe\war3version\126a\war3.exe war3.exe 
move kkwe\war3version\126a\DzAPI.mix DzAPI.mix 
) ELSE (
    echo.File is ^>= %maxbytesize% bytes
	echo storm.dll is 1.27
	echo change version to 1.26a
move war3.exe "kkwe\war3version\127a\war3.exe"
move Storm.dll "kkwe\war3version\127a\Storm.dll"
move game.dll "kkwe\war3version\127a\game.dll"
move War3Patch.mpq "kkwe\war3version\127a\War3Patch.mpq"
move DzAPI_ServerDataOnly.mix "kkwe\war3version\127a\DzAPI_ServerDataOnly.mix"

move kkwe\war3version\126a\Storm.dll Storm.dll
move kkwe\war3version\126a\game.dll game.dll
move kkwe\war3version\126a\War3Patch.mpq War3Patch.mpq
move kkwe\war3version\126a\war3.exe war3.exe 
move kkwe\war3version\126a\DzAPI.mix DzAPI.mix 
)

goto endofchooser
REM FOR /F "tokens=*" %%i IN (1.28.5_path.txt) DO "%%i\jnloader.exe" %commandline128%
REM FOR /F "tokens=*" %%i IN (gHostBot1.28_path.txt) DO %%i

exit /b
)
if "%YesNo%"=="2" (


exit /b
)

exit /b
:YesNoBox
REM returns 6 = Yes, 7 = No. Type=4 = Yes/No
set YesNo=
set MsgType=4
set heading=%~2
set message=%~1
echo wscript.echo msgbox(WScript.Arguments(0),%MsgType%,WScript.Arguments(1)) >"%temp%\input.vbs"
for /f "tokens=* delims=" %%a in ('cscript //nologo "%temp%\input.vbs" "%message%" "%heading%"') do set YesNo=%%a
exit /b
REM echooster

:endofchooser


for /f "delims=" %%a in (kkwe\disableinitmsg.txt) do set "disableinitmsg=%%a"
REM echo "%disableinitmsg%"
REM pause
IF "%disableinitmsg%"=="" (
START CMD /C "ECHO this plugin allow you to play map that was made for kk platform which is biggest warcraft 3 platform in china formerly known as netease, most kk platform map stored player map progress in server like point, that point is required to unlock locked hero, skin, item etc from their map feature. if you want unlock these locked skin etc, you can setup your profile by opening @set ShuenDzapiServerLogin.bat then click register it will open shuen website. input ur profile name then copy your profile name and the password that generated in shuen website to login form. select create in action selection then click continue, if website say profile exist you have to try different profile name. go back to login form correct it if wrong then click login. note that if proflle exist but password wrong the player map data wont be saved into server but you still load that profile name data. if you have problem like crash or slow etc try different option in kkwe folder you can open these .bat file, you can disable this msg by open disableinitmsg.bat && PAUSE" 
)
if not exist "wfe" goto skipopenwfe
tasklist /FI "IMAGENAME eq WFEApp.exe" 2>NUL | find /I /N "WFEApp.exe">NUL 
if %ERRORLEVEL%==0 goto skipopenwfe
REM wmic process where name='WFEApp.exe' delete
start /d "%~dp0wfe" "" "wfe\WFEApp.exe"
:skipopenwfe
REM if NOT exist DzAPI_ServerDataOnly.ini ( 


REM call "ShuenDzapiServerLogin127.bat"
REM call start cmd /c "ShuenDzapiServerLogin127.bat"
REM pause
REM goto skiperrormsg
REM )
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
IF "%war3version%"=="127a" (
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\String" /v userbnet') do set "oldbnetname=%%b"
REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d "1%LanName%" /f
)
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

if NOT exist ghostpp-master goto skipOpenGhost
Call :YesNoBoxghost "open gHost.exe?"
if "%YesNo%"=="7" (

goto skipOpenGhost
REM FOR /F "tokens=*" %%i IN (1.27a_path.txt) DO start /d "%%i" "" "%%i\Warcraft III.exe""
REM FOR /F "tokens=*" %%i IN (gHostBot1.27_path.txt) DO start /d "%%i" "" "%%i\ghost.exe""
REM taskkill /F /IM "frozen throne.exe"
exit /b
)
if "%YesNo%"=="6" (

goto startGhost
REM FOR /F "tokens=*" %%i IN (1.28.5_path.txt) DO "%%i\jnloader.exe" %commandline128%
REM FOR /F "tokens=*" %%i IN (gHostBot1.28_path.txt) DO %%i

exit /b
)
if "%YesNo%"=="2" (


exit /b
)

exit /b
:YesNoBoxghost
REM returns 6 = Yes, 7 = No. Type=4 = Yes/No
set YesNo=
set MsgType=4
set heading=%~2
set message=%~1
echo wscript.echo msgbox(WScript.Arguments(0),%MsgType%,WScript.Arguments(1)) >"%temp%\input.vbs"
for /f "tokens=* delims=" %%a in ('cscript //nologo "%temp%\input.vbs" "%message%" "%heading%"') do set YesNo=%%a
exit /b
:startGhost
REM echo backup ghost.log before sstart ghost.exe
if not exist "ghostpp-master\ghostbotlogbackupalri" md "ghostpp-master\ghostbotlogbackupalri"
if not exist "ghostpp-master\ghostbotlogbackupalri\ghost.log%datealri%" md "ghostpp-master\ghostbotlogbackupalri\ghost.log%datealri%"
REM wmic process where name='ghost.exe' delete
move ghostpp-master\ghost.log "ghostpp-master\ghostbotlogbackupalri\ghost.log%datealri%\ghost.log"
echo starting ghost.exe
IF "%war3version%"=="127a" (
start ""  /D "%~dp0ghostpp-master127\" "%~dp0ghostpp-master127\Ghost.exe"
)
IF "%war3version%"=="126a" (
start ""  /D "%~dp0ghostpp-master\" "%~dp0ghostpp-master\Ghost.exe"
)
:skipOpenGhost

echo starting war3 1.27a with kkwe
REM cd kkwe\bin\
REM "YDWEConfig.exe" -launchwar3
REM startydwealri.bat
REM pause
REM start /d "%~dp0kkwe" "" "kkwe\bin\YDWEConfig.exe" -launchwar3
IF "%war3version%"=="127a" (
start /d "%~dp0kkwe" "" "KKWE\bin\YDWEConfig.exe" -launchwar3
)
IF "%war3version%"=="126a" (
start /d "%~dp0YDWE_plugin" "" "YDWE_plugin\Warcraft III.exe"
)
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




echo auto fixing cannot host in gameranger
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\Gameplay" /v netgameport') do set "netgameport=%%b"
echo "%netgameport%"
IF NOT "%netgameport%"=="0x17e0" (
REG ADD "%war3registrypath%\Gameplay" /v netgameport /t REG_DWORD /d 6112 /f
)
REM echo auto change light to high cuz older wfe autochange light to low on war3 1.28
REM REG ADD "%war3registrypath%\Video" /v lights /t REG_DWORD /d 2 /f
echo auto fixing crash when click option inside warcraft
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\Video" /v spellfilter') do set "spellfilter=%%b"
echo "%spellfilter%"
IF NOT "%spellfilter%"=="0x2" (
REG ADD "%war3registrypath%\Video" /v spellfilter /t REG_DWORD /d 2 /f
)
echo auto change model quality to high to prevent stuck at loading and crash on some map cuz of some model and texture bug
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\Video" /v modeldetail') do set "modeldetail=%%b"
echo "%modeldetail%"
IF NOT "%modeldetail%"=="0x2" (
REG ADD "%war3registrypath%\Video" /v modeldetail /t REG_DWORD /d 2 /f
)
echo auto change texture quality to high
FOR /F "tokens=2* skip=2" %%a in ('reg query "%war3registrypath%\Video" /v texquality') do set "texquality=%%b"
echo "%texquality%"
IF NOT "%texquality%"=="0x2" (
REG ADD "%war3registrypath%\Video" /v texquality /t REG_DWORD /d 2 /f
)
echo "%oldbnetname%"
echo "%lanname%"
REM delete self bat
REM if NOT exist nodelete (goto) 2>nul & del "%~f0"
timeout /t 5
echo restoring old bnetname
REM REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d "%oldbnetname%" /f
REM REG ADD "%war3registrypath%\String" /v userbnet /t REG_SZ /d "%bnetName%" /f
timeout /t 120


REM echo rename d3d8 back
REM rename "d3d8.dll.backup" "d3d8.dll"
taskkill /F /IM "warcraft iii.exe"
