@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
for %%i in ("%SCRIPT_DIR%") do set "SCRIPT_DIR=%%~fi"

set "APP_HOME=%SCRIPT_DIR%"
set "APP_LIB=%APP_HOME%\lib"
if exist "%APP_LIB%\minecraft-chat-overlay-translator-1.0.0.jar" goto resolveJava

set "APP_HOME=%SCRIPT_DIR%\build\install\minecraft-chat-overlay-translator"
for %%i in ("%APP_HOME%") do set "APP_HOME=%%~fi"
set "APP_LIB=%APP_HOME%\lib"
if exist "%APP_LIB%\minecraft-chat-overlay-translator-1.0.0.jar" goto resolveJava

echo.
echo App files were not found.
echo Run gradlew.bat installDist first, or use the packaged application folder.
echo.
pause
exit /b 1

:resolveJava
if defined JAVA_HOME (
    if exist "%JAVA_HOME%\bin\javaw.exe" goto runTranslator
)

where javaw >nul 2>&1
if %ERRORLEVEL% equ 0 (
    set "JAVA_EXE=javaw.exe"
    goto runTranslator
)

echo.
echo Java 21 was not found.
echo Install JDK 21 and make sure JAVA_HOME or javaw on PATH is available:
echo %~f0
echo.
pause
exit /b 1

:runTranslator
if not defined JAVA_EXE set "JAVA_EXE=%JAVA_HOME%\bin\javaw.exe"
start "" "%JAVA_EXE%" -classpath "%APP_LIB%\*" com.codex.mcoverlay.MainKt
exit /b 0
