@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  StarHunter startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and STAR_HUNTER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\StarHunter.jar;%APP_HOME%\lib\jme3-core-3.1.0-beta2.jar;%APP_HOME%\lib\jme3-desktop-3.1.0-beta2.jar;%APP_HOME%\lib\jme3-lwjgl-3.1.0-beta2.jar;%APP_HOME%\lib\lemur-1.9.1.jar;%APP_HOME%\lib\lemur-props-1.0.1.jar;%APP_HOME%\lib\lemur-proto-1.8.1.jar;%APP_HOME%\lib\sim-ethereal-1.2.1.jar;%APP_HOME%\lib\sim-math-1.1.0.jar;%APP_HOME%\lib\sio2-1.0.3.jar;%APP_HOME%\lib\zay-es-1.2.1.jar;%APP_HOME%\lib\zay-es-net-1.2.1.jar;%APP_HOME%\lib\pager-1.0.1-SNAPSHOT.jar;%APP_HOME%\lib\sim-fx-1.0.1-SNAPSHOT.jar;%APP_HOME%\lib\jme3-spaceshift-extension.jar;%APP_HOME%\lib\rlib-5.0.0.jar;%APP_HOME%\lib\annotations-10.0.2.jar;%APP_HOME%\lib\assets.jar;%APP_HOME%\lib\lwjgl-2.9.3.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\jme3-networking-3.1.0-alpha4.jar;%APP_HOME%\lib\groovy-all-2.4.5.jar;%APP_HOME%\lib\log4j-api-2.5.jar;%APP_HOME%\lib\log4j-core-2.5.jar;%APP_HOME%\lib\lwjgl-platform-2.9.3-natives-windows.jar;%APP_HOME%\lib\lwjgl-platform-2.9.3-natives-linux.jar;%APP_HOME%\lib\lwjgl-platform-2.9.3-natives-osx.jar;%APP_HOME%\lib\jinput-2.0.5.jar;%APP_HOME%\lib\jutils-1.0.0.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-linux.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-windows.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-osx.jar;%APP_HOME%\lib\slf4j-api-1.7.15.jar

@rem Execute StarHunter
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %STAR_HUNTER_OPTS%  -classpath "%CLASSPATH%" com.jvpichowski.starhunter.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable STAR_HUNTER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%STAR_HUNTER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
