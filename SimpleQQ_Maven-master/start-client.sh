#!/bin/bash

echo "Starting SimpleQQ Client..."
echo

# Check if compiled
if [ ! -f "client/target/client-1.0-SNAPSHOT.jar" ]; then
    echo "Compiling project..."
    mvn clean compile package
    if [ $? -ne 0 ]; then
        echo "Compilation failed!"
        exit 1
    fi
fi

echo "Starting client GUI..."
cd client
java -cp "target/client-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow