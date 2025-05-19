# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Arguments to make the JAR file name configurable
ARG JAR_FILE_PATH=target/*.jar

# Copy the executable JAR file from the target folder to the container
COPY ${JAR_FILE_PATH} app.jar

# Make port 8080 available to the world outside this container
# This is the default port for Spring Boot applications.
# If your application runs on a different port, change this value.
EXPOSE 8080

# Run the JAR file 
# The exec form is used for "java -jar app.jar" to ensure that the Java process
# receives signals properly (e.g., for graceful shutdown).
ENTRYPOINT ["java", "-jar", "app.jar"]
