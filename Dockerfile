FROM quay.io/quarkus/quarkus-distroless-image:17 as builder
COPY . /app
WORKDIR /app
RUN ./mvnw -DskipTests package

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /work
COPY --from=builder /app/target/demo-0.0.1-runner.jar app.jar
ENTRYPOINT ["java","-jar","/work/app.jar"]
