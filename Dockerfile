FROM adoptopenjdk/openjdk11:alpine-jre
EXPOSE 8761
ARG JAR_FILE=/target/EurekaNamingServer-0.0.1-SNAPSHOT.jar
COPY /target/EurekaNamingServer-0.0.1-SNAPSHOT.jar eureka-naming-service.jar
ENTRYPOINT ["java","-jar","eureka-naming-service.jar"]