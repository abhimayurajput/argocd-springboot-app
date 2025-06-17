FROM eclipse-temurin:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the locally built JAR file
COPY target/demo-0.1.0.jar app.jar

# Expose port (optional if you use Kubernetes Service)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]