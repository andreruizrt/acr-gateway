# Etapa de construção
FROM maven:3.9-eclipse-temurin-17 AS builder

WORKDIR /app

RUN git clone https://github.com/kielsonzinn/automatic-code-review-dashboard-auth.git .

RUN openssl genpkey -algorithm RSA -out src/main/resources/app.key && \
    openssl rsa -pubout -in src/main/resources/app.key -out src/main/resources/app.pub

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]