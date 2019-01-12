#!/bin/bash

echo "build test docker images"
docker build -t jdk-8-heap-test:v1 .

echo "test with -XX:InitialRAMPercentage and -XX:MaxRAMPercentage"


for options in \
    "-XX:InitialRAMPercentage=10.0 -XX:MaxRAMPercentage=10.0 -XX:MinRAMPercentage=10.0" \
    "-XX:InitialRAMPercentage=20.0 -XX:MaxRAMPercentage=30.0 -XX:MinRAMPercentage=25.0" \
    "-XX:InitialRAMPercentage=30.0 -XX:MaxRAMPercentage=50.0 -XX:MinRAMPercentage=40.0" \
    "-XX:InitialRAMPercentage=40.0 -XX:MaxRAMPercentage=70.0 -XX:MinRAMPercentage=50.0"
do
    echo JAVA_TOOL_OPTIONS="$options"
    docker run --rm --memory 128m  -e JAVA_TOOL_OPTIONS="$options" jdk-8-heap-test:v1 java -cp . Test
done