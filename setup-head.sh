#!/bin/sh
mvn clean \
  com.savage7.maven.plugins:maven-external-dependency-plugin:resolve-external \
  com.savage7.maven.plugins:maven-external-dependency-plugin:install-external

mkdir target
git clone git@github.com:Frege/frege.git target/frege
mkdir target/frege/build
mkdir target/frege/dist
cd target/frege
cp ~/.m2/repository/com/theoryinpractise/frege/fregelib/3.21.586-g026e8d7/fregelib-3.21.586-g026e8d7.jar fregec.jar
make frege.mk && make -f frege.mk runtime 'shadow-prelude' compiler

