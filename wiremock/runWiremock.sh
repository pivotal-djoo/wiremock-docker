#!/bin/sh

if [ ! -f "wiremock.jar" ]; then
    curl https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/2.27.2/wiremock-jre8-standalone-2.27.2.jar -o wiremock.jar
fi

docker build -t wiremock .
docker run -d -p 9090:9090 wiremock
