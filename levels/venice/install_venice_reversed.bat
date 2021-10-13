
@echo off
cls
echo You are about to install track 'Venice reversed'. This will be a new
echo track (a copy of 'Venice'), in a separate directory 'levels\venice_r'.
echo This is the only way to play 'Venice' reversed without overwriting an
echo original Acclaim track.
echo.
echo No existing data will be deleted or modified.
echo.
echo You MUST quit Re-Volt before continuing (or some files cannot be copied).
echo.
echo Do you want to  continue
choice
if errorlevel 2 goto done_no_changes

if exist ..\venice_r\nul goto have_old

rem *** creating new track folder and copying files ***
cd ..\..
mkdir levels\venice_r
copy levels\venice\*.* levels\venice_r
rem *** replacing forward files with reversed ones ***
copy levels\venice\reversed\*.* levels\venice_r
rem *** installing track selection bitmaps ***
move levels\venice_r\venice_r.bmp gfx\venice_r.bmp
move levels\venice_r\venice_r.bmq gfx\venice_r.bmq
rem *** renaming files ***
cd levels\venice_r
ren venice.cam venice_r.cam
ren venice.fan venice_r.fan
ren venice.fin venice_r.fin
ren venice.fob venice_r.fob
ren venice.inf venice_r.inf
ren venice.lit venice_r.lit
ren venice.ncp venice_r.ncp
ren venice.pan venice_r.pan
ren venice.taz venice_r.taz
ren venice.tri venice_r.tri
ren venice.vis venice_r.vis
ren venice.w venice_r.w
ren venicea.bmp venice_ra.bmp
ren venicea.bmq venice_ra.bmq
ren veniceb.bmp venice_rb.bmp
ren veniceb.bmq venice_rb.bmq
ren venicec.bmp venice_rc.bmp
ren venicec.bmq venice_rc.bmq
ren veniced.bmp venice_rd.bmp
ren veniced.bmq venice_rd.bmq
ren venicee.bmp venice_re.bmp
ren venicee.bmq venice_re.bmq
ren venicef.bmp venice_rf.bmp
ren venicef.bmq venice_rf.bmq
ren veniceg.bmp venice_rg.bmp
ren veniceg.bmq venice_rg.bmq
ren veniceh.bmp venice_rh.bmp
ren veniceh.bmq venice_rh.bmq
ren venicei.bmp venice_ri.bmp
ren venicei.bmq venice_ri.bmq
ren venicej.bmp venice_rj.bmp
ren venicej.bmq venice_rj.bmq
rem *** this file is unneeded in reversed Venice ***
del Install_Venice_Reversed.bat
cd ..\venice
goto done


:have_old
echo.
echo 'levels\venice_r' already exists, cannot continue. If you want to re-install
echo 'Venice reversed', you have uninstall first:
echo  - delete levels\venice_r
echo  - delete gfx\venice_r.bmp
echo  - delete gfx\venice_r.bmq
goto done_no_changes


:done_no_changes
echo Nothing is done, no files were copied.
goto end


:done
echo.
echo Successfully created track 'Venice reversed' in folder 'levels\venice_r'.
goto end


:end