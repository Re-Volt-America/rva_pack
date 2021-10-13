
@echo off
cls
echo You are about to install track 'PetroVolt reversed'. This will be a new
echo track, (a copy of 'PetroVolt') called 'PetroVolt reversed', in a separate
echo directory 'levels\petrol_r'. This is the only way to play 'PetroVolt'
echo reversed without overwriting an original Acclaim track.
echo.
echo No existing data will be deleted or modified.
echo.
echo You MUST quit Re-Volt before continuing (or some files cannot be copied).
echo.
echo Do you want to  continue
choice
if errorlevel 2 goto done_no_changes

if exist ..\petrol_r\nul goto have_old

rem *** creating new track folder and copying files ***
cd ..\..
mkdir levels\petrol_r
copy levels\petrol\*.* levels\petrol_r
rem *** replacing forward files with reversed ones ***
copy levels\petrol\reversed\*.* levels\petrol_r
rem *** installing track selection bitmaps ***
move levels\petrol_r\petrol_r.bmp gfx\petrol_r.bmp
move levels\petrol_r\petrol_r.bmq gfx\petrol_r.bmq
rem *** renaming files ***
cd levels\petrol_r
ren petrol.cam petrol_r.cam
ren petrol.fan petrol_r.fan
ren petrol.fin petrol_r.fin
ren petrol.fob petrol_r.fob
ren petrol.inf petrol_r.inf
ren petrol.lit petrol_r.lit
ren petrol.ncp petrol_r.ncp
ren petrol.pan petrol_r.pan
ren petrol.rim petrol_r.rim
ren petrol.taz petrol_r.taz
ren petrol.tri petrol_r.tri
ren petrol.vis petrol_r.vis
ren petrol.w petrol_r.w
ren petrola.bmp petrol_ra.bmp
ren petrola.bmq petrol_ra.bmq
ren petrolb.bmp petrol_rb.bmp
ren petrolb.bmq petrol_rb.bmq
ren petrolc.bmp petrol_rc.bmp
ren petrolc.bmq petrol_rc.bmq
ren petrold.bmp petrol_rd.bmp
ren petrold.bmq petrol_rd.bmq
ren petrole.bmp petrol_re.bmp
ren petrole.bmq petrol_re.bmq
ren petrolf.bmp petrol_rf.bmp
ren petrolf.bmq petrol_rf.bmq
ren petrolg.bmp petrol_rg.bmp
ren petrolg.bmq petrol_rg.bmq
ren petrolh.bmp petrol_rh.bmp
ren petrolh.bmq petrol_rh.bmq
ren petroli.bmp petrol_ri.bmp
ren petroli.bmq petrol_ri.bmq
ren petrolj.bmp petrol_rj.bmp
ren petrolj.bmq petrol_rj.bmq
rem *** this file is unneeded in reversed PetroVolt ***
del Install_PetroVolt_Reversed.bat
cd ..\petrol
goto done


:have_old
echo.
echo 'levels\petrol_r' already exists, cannot continue. If you want to re-install
echo 'PetroVolt reversed', you have uninstall first:
echo  - delete levels\petrol_r
echo  - delete gfx\petrol_r.bmp
echo  - delete gfx\petrol_r.bmq
goto done_no_changes


:done_no_changes
echo Nothing is done, no files were copied.
goto end


:done
echo.
echo Successfully created track 'PetroVolt reversed' in folder 'levels\petrol_r'.
goto end


:end