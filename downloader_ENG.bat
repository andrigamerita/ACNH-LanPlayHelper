@echo off
cls
title LanPlayHelper Files Downloader
color 9f

echo.
echo.
echo.
echo *      *****  **   *  *****  *      *****  *   *
echo *      *   *  * *  *  *   *  *      *   *   * *
echo *      *****  * ** *  *****  *      *****    *
echo *      *   *  *  * *  *      *      *   *    *
echo *****  *   *  *   **  *      *****  *   *    *
echo.
echo     *   *  *****  *      *****  *****  *****
echo     *   *  *      *      *   *  *      *   *
echo     *****  *****  *      *****  *****  *****
echo     *   *  *      *      *      *      *  *
echo     *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.

mkdir LanPlayHelper
echo A "LanPlayHelper" folder has been created in
echo the same directory this script resides in:
echo %cd%
echo.
echo Files needed for LanPlayHelper
echo will now be downloaded in it.
echo Be sure to have an active internet connection.
echo.
echo Press Enter to start the download.
pause > nul

cd LanPlayHelper
mkdir stuff
timeout 1 > nul
bitsadmin /transfer main /priority high https://github.com/andrigamerita/ACNH-LanPlayHelper/blob/master/sources/start_ENG.bat %cd%\start_ENG.bat
cd stuff
timeout 1 > nul
bitsadmin /transfer lanplay /priority high https://github.com/andrigamerita/ACNH-LanPlayHelper/raw/master/sources/lan-play.exe %cd%\lan-play.exe
timeout 1 > nul
bitsadmin /transfer winpcap /priority high https://github.com/andrigamerita/ACNH-LanPlayHelper/blob/master/sources/winpcap-setup.exe %cd%\winpcap-setup.exe
cd ..

cls
echo.
echo.
echo.
echo The needed files have been downloaded in:
echo %cd%
echo.
echo Press Enter to close this script and open the folder.
pause > nul
explorer %cd%
exit