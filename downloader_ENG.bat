@echo off
cmd
@echo off
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

mkdir lanhelperfiles
echo A "lanhelperfiles" folder has been created in
echo the same directory this script resides in:
echo %cd%
echo.
echo Files needed for LanPlayHelper
echo will now be downloaded in it.
echo Be sure to have an active internet connection.
echo.
echo Press Enter to start the download.
pause > nul

cd lanhelperfiles
bitsadmin /transfer lan-play /priority high UrlOfTheFile SaveFileAsName

cls
echo spacc completed