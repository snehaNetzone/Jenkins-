FROM openjdk:17-jdk-alpine
EXPOSE 9000
COPY target/spring-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
