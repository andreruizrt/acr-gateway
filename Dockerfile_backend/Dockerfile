FROM maven:3.9-eclipse-temurin-17 AS builder

WORKDIR /app

RUN git clone https://github.com/kielsonzinn/Dashboard-gestao-API.git .

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]