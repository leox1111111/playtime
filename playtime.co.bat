@echo off
title Playtime Co. - Menu
cls

:menu
echo ----------------------------
echo Witaj w Playtime Co.!
echo ----------------------------
echo [1] Opis gry
echo [2] Nowa gra
echo [3] Sejwy gry
echo [4] Wyjscie
echo.
set /p opcja="Wybierz opcje (1-4): "

if "%opcja%"=="1" goto opis
if "%opcja%"=="2" goto nowaGra
if "%opcja%"=="3" goto sejwy
if "%opcja%"=="4" exit

:opis
cls
echo Witaj w Playtime Co.
echo.
echo Jestes w tajemniczej fabryce, ktora nie dziala juz od lat. Po przebudzeniu w
echo jednym z pokoi, odkrywasz, ze jestes jednym z pacjentow, ktorzy przezyli
echo dziwaczne eksperymenty. Musisz odkryc, co sie dzieje, poznac reszte
echo pacjentow i uciec, zanim bedzie za pozno.
echo.
echo [1] Powrot do menu
set /p back=">> "
if "%back%"=="1" goto menu

:nowaGra
cls
echo Rozpoczynasz nowa gre...
timeout /t 10 >nul
cls
echo Naukowiec: Witaj Catnapie, tak, jestes po operacji, tak jak reszta w Playcare, no moze nie wszyscy...
echo Naukowiec: Zaprowadze cie do innych.
echo.
echo [1] Idziesz z naukowcem
echo [2] Siedzisz i sie gapisz swoimi bialymi oczami
set /p wybor=">> "

if "%wybor%"=="1" (
    echo Idziesz z naukowcem. On prowadzi cie przez korytarz.
    timeout /t 10 >nul
    goto dalszy_krok
) else if "%wybor%"=="2" (
    echo Siedzisz, patrzysz na swoimi bialymi oczami. Naukowiec stara sie ciebie przekonac.
    timeout /t 10 >nul
    goto dalszy_krok
) else (
    echo Wybierz 1 lub 2.
    timeout /t 10 >nul
    goto nowaGra
)

:dalszy_krok
cls
echo Naukowiec: Czekaj, tu sa inni, ale... cos jest nie tak...
echo.
echo [1] Rozgladasz sie wokol, sprawdzajac co sie dzieje.
echo [2] Zostajesz w miejscu i czekasz na wyjasnienia.
set /p krok=">> "

if "%krok%"=="1" (
    echo Rozgladasz sie, ale zauwazasz cos dziwnego w zaciemnionym kacie.
    timeout /t 10 >nul
    goto koniec
) else if "%krok%"=="2" (
    echo Zostajesz w miejscu, a naukowiec zaczyna wyjasniac ci sytuacje.
    timeout /t 10 >nul
    goto koniec
) else (
    echo Wybierz 1 lub 2.
    timeout /t 10 >nul
    goto dalszy_krok
)

:koniec
cls
echo --- KONIEC DEMO ---
pause
exit

:sejwy
cls
echo Opcja "Sejwy gry" jest jeszcze w fazie przygotowania.
echo.
echo [1] Powrot do menu
set /p back=">> "
if "%back%"=="1" goto menu
