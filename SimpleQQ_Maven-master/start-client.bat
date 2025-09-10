@echo off
echo Starting SimpleQQ Client...
echo.

REM Check if compiled
if not exist "client\target\client-1.0-SNAPSHOT.jar" (
    echo Compiling project...
    call mvn clean compile package
    if errorlevel 1 (
        echo Compilation failed!
        pause
        exit /b 1
    )
)

echo Starting client GUI...
cd client
java -cp "target/client-1.0-SNAPSHOT.jar;../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow

pause