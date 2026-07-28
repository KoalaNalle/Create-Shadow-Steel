@echo off
setlocal
set "APP_HOME=%~dp0"
set "WRAPPER_JAR=%APP_HOME%gradle\wrapper\gradle-wrapper.jar"

if not exist "%WRAPPER_JAR%" (
    echo Missing %WRAPPER_JAR%
    echo Run bootstrap-wrapper.ps1 once, then retry.
    exit /b 1
)

java -Xmx64m -Xms64m -classpath "%WRAPPER_JAR%" org.gradle.wrapper.GradleWrapperMain %*
endlocal
