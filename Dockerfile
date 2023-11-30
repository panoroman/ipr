FROM gradle:8.5.0-jdk21 as build

WORKDIR /workspace

COPY src src
COPY build.gradle build.gradle
COPY settings.gradle settings.gradle

RUN gradle clean build

FROM bellsoft/liberica-openjdk-debian:21.0.1

WORKDIR /app

COPY --from=build /workspace/build/libs/ipr-0.0.1-SNAPSHOT.jar  ./ipr.jar

CMD ["java", "-jar", "ipr.jar"]
