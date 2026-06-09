FROM maven:3.9.11-eclipse-temurin-25 AS build
WORKDIR /app
COPY pom.xml ./
COPY src ./src
RUN mvn -DskipTests clean package

FROM eclipse-temurin:25-jre-alpine
RUN addgroup -S innkeeper-java && adduser -S innkeeper-java -G innkeeper-java
USER innkeeper-java:innkeeper-java
COPY --from=build /app/target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]