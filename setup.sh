#!/bin/sh
#mvn clean
#mkdir target

wget https://github.com/Frege/frege/releases/download/3.24alpha/frege3.24-7.100.jar -O target/frege-jdk7.jar
wget https://github.com/Frege/frege/releases/download/3.24alpha/frege3.24.100.jar -O target/frege-jdk8.jar



#mvn \
#  com.savage7.maven.plugins:maven-external-dependency-plugin:resolve-external \
#  com.savage7.maven.plugins:maven-external-dependency-plugin:install-external
