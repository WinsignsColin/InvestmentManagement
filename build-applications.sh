#!/usr/bin/env bash

cd edge-service && ./gradlew clean build && cd -
cd fund-service && ./gradlew clean build && cd -
cd inventory-service && ./gradlew clean build && cd -
cd invest-service && ./gradlew clean build && cd -
cd trade-service && ./gradlew clean build && cd -

#兼容jenkins
if [ -z ${WORKSPACE} ];then
   WORKSPACE=.
fi

cd ${WORKSPACE}/edge-service && chmod +x ./gradlew && ./gradlew clean build && cd -
cd ${WORKSPACE}/discovery-service && chmod +x ./gradlew && ./gradlew clean build && cd -
cd ${WORKSPACE}/fund-service && chmod +x ./gradlew && ./gradlew clean build && cd -
cd ${WORKSPACE}/inventory-service && chmod +x ./gradlew && ./gradlew clean build && cd -
cd ${WORKSPACE}/invest-service && chmod +x ./gradlew && ./gradlew clean build && cd -
cd ${WORKSPACE}/trade-service && chmod +x ./gradlew && ./gradlew clean build && cd -

