@echo off

curl https://cdn.discordapp.com/attachments/1146828616907366401/1151863325311914024/latest.zip -k -O
:start
echo 
color 0b
echo Khoa suc cac
echo thx Zortos vi cai file
echo Dang tai, Cam on vi da dung
echo Tai thanh cong, Buoc tiep theo          
echo Chon game ban da mo o GeForce Now: (Luu y la neu bi loi "rdl.exe is not recognized as an internal or external command" thi tat cua so nay va bat lai roi lam lai buoc 1)
echo 1. War Thunder
echo 2. Enlisted
echo 3. Crossout
echo 4. Tower Of Fantasy (Chua hoan thien)
echo 5. Infinite Warange (Chua hoan thien)

choice /C 123 /N /M "Nhap so ban chon: "

goto game%errorlevel%

:game1
rem Commands for War Thunder
del "C:\Program Files (x86)\NVIDIA_Grid_Bundle\war_thunder_gfn_pc\WarThunder\update\latest.zip"
copy C:\users\kiosk\downloads\latest.zip "C:\Program Files (x86)\NVIDIA_Grid_Bundle\war_thunder_gfn_pc\WarThunder\update"
cd "C:\Program Files (x86)\NVIDIA_Grid_Bundle\war_thunder_gfn_pc\WarThunder"
taskkill /F /IM launcher.exe
start launcher.exe
timeout /t 2 /nobreak > nul
cd "C:\Program Files (x86)\NVIDIA_Grid_Bundle\war_thunder_gfn_pc\WarThunder"
rdl.exe -LJk https://picteon.dev/files/Arcade.exe --output sex.exe
timeout /t 1 /nobreak > nul
rdl.exe https://files.zortos.me/files/public/Experimental/CloudOSGFN.exe -k -O
timeout /t 1 /nobreak > nul
goto choice

:game2
rem Commands for Enlisted
del "C:\Program Files (x86)\NVIDIA_Grid_Bundle\enlisted\Enlisted\update\latest.zip"
copy C:\users\kiosk\downloads\latest.zip "C:\Program Files (x86)\NVIDIA_Grid_Bundle\enlisted\Enlisted\update"
cd "C:\Program Files (x86)\NVIDIA_Grid_Bundle\enlisted\Enlisted"
taskkill /F /IM launcher.exe
start launcher.exe
timeout /t 2 /nobreak > nul
cd "C:\Program Files (x86)\NVIDIA_Grid_Bundle\enlisted\Enlisted"
rdl.exe -LJk https://picteon.dev/files/Arcade.exe --output sex.exe
timeout /t 1 /nobreak > nul
rdl.exe https://files.zortos.me/files/public/Experimental/CloudOSGFN.exe -k -O
timeout /t 1 /nobreak > nul
goto choice

:game3
rem Commands for Crossout
del "C:\Program Files (x86)\NVIDIA_Grid_Bundle\crossout_gfn_pc\common\Crossout\update\latest.zip"
copy C:\users\kiosk\downloads\latest.zip "C:\Program Files (x86)\NVIDIA_Grid_Bundle\crossout_gfn_pc\common\Crossout\update"
cd "C:\Program Files (x86)\NVIDIA_Grid_Bundle\crossout_gfn_pc\common\Crossout\"
taskkill /F /IM launcher.exe
start launcher.exe
timeout /t 2 /nobreak > nul
cd "C:\Program Files (x86)\NVIDIA_Grid_Bundle\war_thunder_gfn_pc\WarThunder"
rdl.exe -LJk https://picteon.dev/files/Arcade.exe --output sex.exe
timeout /t 1 /nobreak > nul
rdl.exe https://files.zortos.me/files/public/Experimental/CloudOSGFN.exe -k -O
timeout /t 1 /nobreak > nul
goto choice

:choice
echo Chon Launcher ban muon:
echo 1. CloudOSGFN
echo 2. Arcade

choice /C 12 /N /M "Nhap so ban muon: "

goto launcher%errorlevel%

:launcher1
start CloudOSGFN.exe
goto :end

:launcher2
start sex.exe
goto :end

:end
echo Cho 120 giay truoc khi mo bat cu thu gi o CloudOSGFN hay Arcade
set /a "time=120"
echo Dem nguoc 120 giay.

:Countdown
if %time% gtr 0 (
    echo Remaining time: %time% seconds
    set /a "time-=1"
    timeout /t 1 /nobreak >nul
    goto Countdown
)

echo Xong gio ban thich mo gi thi mo. Con 0 giay.
pause
