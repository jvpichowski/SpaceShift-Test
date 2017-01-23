@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  SpaceShift-Test startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and SPACE_SHIFT_TEST_OPTS to pass JVM options to this script.
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

set CLASSPATH=%APP_HOME%\lib\SpaceShift-Test.jar;%APP_HOME%\lib\annotations-10.0.2.jar;%APP_HOME%\lib\core-0.27.jar;%APP_HOME%\lib\dense64-0.27.jar;%APP_HOME%\lib\denseC64-0.27.jar;%APP_HOME%\lib\eventbus-1.4.jar;%APP_HOME%\lib\j-ogg-all-1.0.0.jar;%APP_HOME%\lib\jbullet.jar;%APP_HOME%\lib\jglfont-core-1.4.jar;%APP_HOME%\lib\jinput-2.0.5.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-linux.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-osx.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-windows.jar;%APP_HOME%\lib\jme3-blender-3.2.0.jar;%APP_HOME%\lib\jme3-bullet-3.2.0.jar;%APP_HOME%\lib\jme3-bullet-native-3.2.0.jar;%APP_HOME%\lib\jme3-bullet.jar;%APP_HOME%\lib\jme3-core-3.2.0.jar;%APP_HOME%\lib\jme3-desktop-3.2.0.jar;%APP_HOME%\lib\jme3-effects-3.2.0.jar;%APP_HOME%\lib\jme3-jbullet-3.2.0.jar;%APP_HOME%\lib\jme3-jogg-3.2.0.jar;%APP_HOME%\lib\jme3-lwjgl3-3.2.0.jar;%APP_HOME%\lib\jme3-plugins-3.2.0.jar;%APP_HOME%\lib\jme3-spaceshift-extension-sources.jar;%APP_HOME%\lib\jme3-spaceshift-extension.jar;%APP_HOME%\lib\jme3-terrain-3.2.0.jar;%APP_HOME%\lib\jsr305-2.0.2.jar;%APP_HOME%\lib\jutils-1.0.0.jar;%APP_HOME%\lib\lwjgl-glfw-natives-linux.jar;%APP_HOME%\lib\lwjgl-glfw-natives-macos.jar;%APP_HOME%\lib\lwjgl-glfw-natives-windows.jar;%APP_HOME%\lib\lwjgl-glfw.jar;%APP_HOME%\lib\lwjgl-jemalloc-natives-linux.jar;%APP_HOME%\lib\lwjgl-jemalloc-natives-macos.jar;%APP_HOME%\lib\lwjgl-jemalloc-natives-windows.jar;%APP_HOME%\lib\lwjgl-jemalloc.jar;%APP_HOME%\lib\lwjgl-natives-linux.jar;%APP_HOME%\lib\lwjgl-natives-macos.jar;%APP_HOME%\lib\lwjgl-natives-windows.jar;%APP_HOME%\lib\lwjgl-openal-natives-linux.jar;%APP_HOME%\lib\lwjgl-openal-natives-macos.jar;%APP_HOME%\lib\lwjgl-openal-natives-windows.jar;%APP_HOME%\lib\lwjgl-openal.jar;%APP_HOME%\lib\lwjgl-opengl.jar;%APP_HOME%\lib\lwjgl.jar;%APP_HOME%\lib\retrace.jar;%APP_HOME%\lib\rlib-5.0.0.jar;%APP_HOME%\lib\rlib-sources-5.0.0.jar;%APP_HOME%\lib\simple-0.27.jar;%APP_HOME%\lib\stack-alloc.jar;%APP_HOME%\lib\vecmath-1.3.1.jar;%APP_HOME%\lib\xpp3-1.1.4c.jar;%APP_HOME%\lib\assets.jar

@rem Execute SpaceShift-Test
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SPACE_SHIFT_TEST_OPTS%  -classpath "%CLASSPATH%" com.jvpichowski.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SPACE_SHIFT_TEST_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SPACE_SHIFT_TEST_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
