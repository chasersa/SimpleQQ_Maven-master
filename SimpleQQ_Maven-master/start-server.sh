#!/bin/bash

echo "Starting SimpleQQ Server..."
echo

# Check if compiled
if [ ! -f "server/target/server-1.0-SNAPSHOT.jar" ]; then
    echo "Compiling project..."
    mvn clean compile package
    if [ $? -ne 0 ]; then
        echo "Compilation failed!"
        exit 1
    fi
fi

echo "Server starting on port 8888..."
cd server
java -cp "target/server-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server