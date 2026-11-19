@echo off
REM Loads data\sparcs_2023.csv into a local PostgreSQL database called "sparcs".
REM Run from Anaconda Prompt:  setup\load_sparcs.bat   (from inside the sql-practice folder)
setlocal
cd /d "%~dp0\.."
if not exist "data\sparcs_2023.csv" (
  echo Put the downloaded CSV at data\sparcs_2023.csv first.
  exit /b 1
)
set "PGBIN="
for /d %%v in ("C:\Program Files\PostgreSQL\*") do set "PGBIN=%%~v\bin"
if not defined PGBIN (
  echo PostgreSQL not found in C:\Program Files\PostgreSQL. Install it first.
  exit /b 1
)
echo Using PostgreSQL tools in %PGBIN%
python setup\build_load_sql.py data\sparcs_2023.csv
if errorlevel 1 (
  echo Python step failed. Make sure you are in Anaconda Prompt.
  exit /b 1
)
set /p PGPASSWORD=Postgres password you chose during install (it will show as you type): 
"%PGBIN%\createdb.exe" -U postgres sparcs 2>nul
for %%f in (00_create_raw 01_load_raw 02_create_clean 03_sanity_checks) do (
  echo.
  echo === Running %%f ===
  "%PGBIN%\psql.exe" -U postgres -d sparcs -v ON_ERROR_STOP=1 -f sql\%%f.sql
  if errorlevel 1 (
    echo FAILED at %%f. Copy the error above and ask for help.
    exit /b 1
  )
)
echo.
echo Done. In DBeaver, connect to database "sparcs" and open table sparcs.discharges.
endlocal
