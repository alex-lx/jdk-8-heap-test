FROM openjdk:8u191-jdk-alpine

WORKDIR /app

ADD Test.java .

RUN javac Test.java


