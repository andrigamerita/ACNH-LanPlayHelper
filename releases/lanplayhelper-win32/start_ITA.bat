@echo off
title LanPlayHelper for ACNH
mode 71,59
color 9f

:main
cls
echo.
echo.
echo.
echo  *      *****  **   *  *****  *      *****  *   *
echo  *      *   *  * *  *  *   *  *      *   *   * *
echo  *      *****  * ** *  *****  *      *****    *
echo  *      *   *  *  * *  *      *      *   *    *
echo  *****  *   *  *   **  *      *****  *   *    *
echo.
echo      *   *  *****  *      *****  *****  *****
echo      *   *  *      *      *   *  *      *   *
echo      *****  *****  *      *****  *****  *****
echo      *   *  *      *      *      *      *  *
echo      *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.
echo  LanPlayHelper per ACNH
echo.
echo.
echo  Digita un numero e premi Invio scegliendo tra:
echo    1. Avvia lan-play
echo    2. Installa dipendenze
echo    3. Guida e risoluzione problemi
echo    4. Info e crediti
echo    5. Esci
echo.
set /p menu=
if %menu%==1 goto lanplay
if %menu%==2 goto dependencies
if %menu%==3 goto help
if %menu%==4 goto info
if %menu%==5 exit

:lanplay
cls
echo.
echo.
echo.
echo  *      *****  **   *  *****  *      *****  *   *
echo  *      *   *  * *  *  *   *  *      *   *   * *
echo  *      *****  * ** *  *****  *      *****    *
echo  *      *   *  *  * *  *      *      *   *    *
echo  *****  *   *  *   **  *      *****  *   *    *
echo.
echo      *   *  *****  *      *****  *****  *****
echo      *   *  *      *      *   *  *      *   *
echo      *****  *****  *      *****  *****  *****
echo      *   *  *      *      *      *      *  *
echo      *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.
echo  LanPlayHelper per ACNH
echo.
echo.
echo  Digita l'indirizzo del server al quale vuoi collegarti e premi Invio.
echo  L'indirizzo deve essere nel formato "ip:porta" o "dominio:porta"
echo  - Esempio: "149.91.81.201:11451" oppure "switch.lan-play.com:11451"
echo  Per incollare un indirizzo dagli appunti, usa il tasto destro.
echo.
echo  Una volta inserito l'indirizzo del server, digita il numero
echo  della scheda di rete con cui il tuo PC e' connesso alla
echo  stessa rete della Switch, dall'elenco che verra' fuori.
echo.
echo  Per tornare al menu, premi Ctrl+C e digita N.
echo.
set /p addr=
stuff\lan-play-win32.exe --pmtu 500 --relay-server-addr %addr%
echo.
echo  Premi Invio per tornare al menu.
pause > nul
goto main

:dependencies
cls
echo.
echo.
echo.
echo  *      *****  **   *  *****  *      *****  *   *
echo  *      *   *  * *  *  *   *  *      *   *   * *
echo  *      *****  * ** *  *****  *      *****    *
echo  *      *   *  *  * *  *      *      *   *    *
echo  *****  *   *  *   **  *      *****  *   *    *
echo.
echo      *   *  *****  *      *****  *****  *****
echo      *   *  *      *      *   *  *      *   *
echo      *****  *****  *      *****  *****  *****
echo      *   *  *      *      *      *      *  *
echo      *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.
echo  LanPlayHelper per ACNH
echo.
echo.
echo  Per funzionare, lan-play ha bisogno dipendenze
echo  alcune dipendenze installate sul sistema:
echo    - WinPcap
echo.
echo  Premi Invio per iniziare la loro installazione,
echo  seguendo il wizard a schermo.
pause > nul
stuff\winpcap-setup.exe
cls
echo.
echo.
echo.
echo  *      *****  **   *  *****  *      *****  *   *
echo  *      *   *  * *  *  *   *  *      *   *   * *
echo  *      *****  * ** *  *****  *      *****    *
echo  *      *   *  *  * *  *      *      *   *    *
echo  *****  *   *  *   **  *      *****  *   *    *
echo.
echo      *   *  *****  *      *****  *****  *****
echo      *   *  *      *      *   *  *      *   *
echo      *****  *****  *      *****  *****  *****
echo      *   *  *      *      *      *      *  *
echo      *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.
echo  LanPlayHelper per ACNH
echo.
echo.
echo  L'installazione e' terminata.
echo  Premi Invio per tornare al menu.
pause > nul
goto main

:help
cls
echo.
echo.
echo.
echo  *      *****  **   *  *****  *      *****  *   *
echo  *      *   *  * *  *  *   *  *      *   *   * *
echo  *      *****  * ** *  *****  *      *****    *
echo  *      *   *  *  * *  *      *      *   *    *
echo  *****  *   *  *   **  *      *****  *   *    *
echo.
echo      *   *  *****  *      *****  *****  *****
echo      *   *  *      *      *   *  *      *   *
echo      *****  *****  *      *****  *****  *****
echo      *   *  *      *      *      *      *  *
echo      *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.
echo  LanPlayHelper per ACNH
echo.
echo.
echo  Questa e' una guida rapida all'utilizzo dello script
echo  e include una serie di soluzioni a problemi comuni.
echo  Una guida completa e comprensiva e' disponibile
echo  sulla repo GitHub (in Info e Crediti).
echo.
echo  - Primo utilizzo
echo  Se e' la prima volta che usi il programma, devi
echo  necessariamente installare le dipendenze dal
echo  menu principale, che servono a lan-play per
echo  funzionare in maniera corretta.
echo.
echo  - Connessione ad un server lan-play
echo  Una volta andato sulla voce "Avvia lan-play" del
echo  menu principale, dovrai inserire l'indirizzo di
echo  un server come richiesto. Una lista di server
echo  e' disponibile su lan-play.com o sulla repo GitHub,
echo  ma dovrai metterti d'accordo con gli altri player
echo  sulla scelta, in quanto tutti i giocatori devono
echo  collegarsi allo stesso server.
echo.
echo  - Scelta della scheda di rete
echo  Una volta inserito l'indirizzo del server, ti verra'
echo  chiesto di scegliere la scheda di rete corretta da
echo  un elenco. Devi digitare il numero corrispondente
echo  alla scheda con cui il tuo PC e' connesso alla rete
echo  locale (va bene sia Ethernet che WiFi), la stessa rete
echo  a cui la tua Switch e' connessa via WiFi.
echo.
echo  - DLL mancanti
echo  In caso lan-play ti dia un errore di DLL mancanti,
echo  significa che WinPcap non e' stato correttamente installato.
echo  Utilizza l'opzione "Installa dipendenze" del menu.
echo.
echo  Premi Invio per tornare al menu.
pause > nul
goto main

:info
cls
echo.
echo.
echo.
echo  *      *****  **   *  *****  *      *****  *   *
echo  *      *   *  * *  *  *   *  *      *   *   * *
echo  *      *****  * ** *  *****  *      *****    *
echo  *      *   *  *  * *  *      *      *   *    *
echo  *****  *   *  *   **  *      *****  *   *    *
echo.
echo      *   *  *****  *      *****  *****  *****
echo      *   *  *      *      *   *  *      *   *
echo      *****  *****  *      *****  *****  *****
echo      *   *  *      *      *      *      *  *
echo      *   *  *****  *****  *      *****  *   *
echo.
echo.
echo.
echo  LanPlayHelper per ACNH
echo.
echo.
echo  Questo script e' stato creato dal sottoscritto
echo  per gli utenti di t.me/acnhita
echo.
echo  Repo GitHub / Pagina ufficiale:
echo  github.com/andrigamerita/ACNH-LanPlayHelper
echo.
echo  Questo programma include software di
echo  terze parti. I crediti spettano ai
echo  legittimi proprietari indicati sulla
echo  repo GitHub.
echo.
echo  Nota: per copiare un link, usa il tasto destro
echo  e clicca "Seleziona", poi evidenzia quello che
echo  vuoi copiare e premi nuovamente il tasto destro.
echo.
echo  Premi Invio per tornare al menu.
pause > nul
goto main