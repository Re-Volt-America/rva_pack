
@echo off
cls
echo You are about to install track 'Quake! reversed'. This will be a new
echo track (a copy of 'Quake!'), in a separate directory 'levels\quake_r'.
echo This is the only way to play 'Quake!' reversed without overwriting an
echo original Acclaim track.
echo.
echo No existing data will be deleted or modified.
echo.
echo You MUST quit Re-Volt before continuing (or some files cannot be copied).
echo.
echo Do you want to  continue
choice
if errorlevel 2 goto done_no_changes

if exist ..\quake_r\nul goto have_old

rem *** creating new track folder and copying files ***
cd ..\..
mkdir levels\quake_r
copy levels\quake\*.* levels\quake_r
rem *** replacing forward files with reversed ones ***
copy levels\quake\reversed\*.* levels\quake_r
rem *** installing track selection bitmaps ***
move levels\quake_r\quake_r.bmp gfx\quake_r.bmp
move levels\quake_r\quake_r.bmq gfx\quake_r.bmq
rem *** renaming files ***
cd levels\quake_r
ren quake.cam quake_r.cam
ren quake.fan quake_r.fan
ren quake.fin quake_r.fin
ren quake.fob quake_r.fob
ren quake.inf quake_r.inf
ren quake.lit quake_r.lit
ren quake.ncp quake_r.ncp
ren quake.pan quake_r.pan
ren quake.rim quake_r.rim
ren quake.taz quake_r.taz
ren quake.tri quake_r.tri
ren quake.vis quake_r.vis
ren quake.w quake_r.w
ren quakea.bmp quake_ra.bmp
ren quakea.bmq quake_ra.bmq
ren quakeb.bmp quake_rb.bmp
ren quakeb.bmq quake_rb.bmq
ren quakec.bmp quake_rc.bmp
ren quakec.bmq quake_rc.bmq
ren quaked.bmp quake_rd.bmp
ren quaked.bmq quake_rd.bmq
ren quakee.bmp quake_re.bmp
ren quakee.bmq quake_re.bmq
ren quakef.bmp quake_rf.bmp
ren quakef.bmq quake_rf.bmq
ren quakeg.bmp quake_rg.bmp
ren quakeg.bmq quake_rg.bmq
ren quakeh.bmp quake_rh.bmp
ren quakeh.bmq quake_rh.bmq
ren quakei.bmp quake_ri.bmp
ren quakei.bmq quake_ri.bmq
ren quakej.bmp quake_rj.bmp
ren quakej.bmq quake_rj.bmq
rem *** this file is unneeded in reversed PetroVolt ***
del Install_Quake_Reversed.bat
cd ..\quake
goto done


:have_old
echo.
echo 'levels\quake_r' already exists, cannot continue. If you want to re-install
echo 'Quake! reversed', you have uninstall first:
echo  - delete levels\quake_r
echo  - delete gfx\quake_r.bmp
echo  - delete gfx\quake_r.bmq
goto done_no_changes


:done_no_changes
echo Nothing is done, no files were copied.
goto end


:done
echo.
echo Successfully created track 'Quake! reversed' in folder 'levels\quake_r'.
goto end


:end