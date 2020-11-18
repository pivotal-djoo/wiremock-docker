FROM java:8
WORKDIR /
ADD wiremock.jar wiremock.jar
ADD mappings /mappings
EXPOSE 9090:9090
CMD java -jar wiremock.jar --port 9090
