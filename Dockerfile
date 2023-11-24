FROM openjdk:21-jdk-slim

COPY /build/libs/ipr-0.0.1-SNAPSHOT.jar  /ipr-0.0.1-SNAPSHOT.jar

CMD ["java", "-jar", "/ipr-0.0.1-SNAPSHOT.jar"]
