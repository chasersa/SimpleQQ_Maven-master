@echo off
echo Starting SimpleQQ Server...
echo.

REM Check if compiled
if not exist "server\target\server-1.0-SNAPSHOT.jar" (
    echo Compiling project...
    call mvn clean compile package
    if errorlevel 1 (
        echo Compilation failed!
        pause
        exit /b 1
    )
)

echo Server starting on port 8888...
cd server
java -cp "target/server-1.0-SNAPSHOT.jar;../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server

pause