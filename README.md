# jdk-8-heap-test
Test jdk-8u191 docker support

# Usage
```bash
./test.sh
```
On my computer, the result is

```
test with -XX:InitialRAMPercentage and -XX:MaxRAMPercentage
JAVA_TOOL_OPTIONS=-XX:InitialRAMPercentage=10.0 -XX:MaxRAMPercentage=10.0 -XX:MinRAMPercentage=10.0
Picked up JAVA_TOOL_OPTIONS: -XX:InitialRAMPercentage=10.0 -XX:MaxRAMPercentage=10.0 -XX:MinRAMPercentage=10.0
totalMemory=14221312|maxMemory=14221312
JAVA_TOOL_OPTIONS=-XX:InitialRAMPercentage=20.0 -XX:MaxRAMPercentage=30.0 -XX:MinRAMPercentage=25.0
Picked up JAVA_TOOL_OPTIONS: -XX:InitialRAMPercentage=20.0 -XX:MaxRAMPercentage=30.0 -XX:MinRAMPercentage=25.0
totalMemory=26411008|maxMemory=32440320
JAVA_TOOL_OPTIONS=-XX:InitialRAMPercentage=30.0 -XX:MaxRAMPercentage=50.0 -XX:MinRAMPercentage=40.0
Picked up JAVA_TOOL_OPTIONS: -XX:InitialRAMPercentage=30.0 -XX:MaxRAMPercentage=50.0 -XX:MinRAMPercentage=40.0
totalMemory=40566784|maxMemory=52756480
JAVA_TOOL_OPTIONS=-XX:InitialRAMPercentage=40.0 -XX:MaxRAMPercentage=70.0 -XX:MinRAMPercentage=50.0
Picked up JAVA_TOOL_OPTIONS: -XX:InitialRAMPercentage=40.0 -XX:MaxRAMPercentage=70.0 -XX:MinRAMPercentage=50.0
totalMemory=52756480|maxMemory=64880640
```