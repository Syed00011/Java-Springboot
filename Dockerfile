# Use the OpenJDK 17 base image with Alpine Linux
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Define a build argument for the artifact file
ARG ARTIFACT_NAME

# Copy the dynamically chosen JAR file from the build context
COPY target/${ARTIFACT_NAME} /app/application.jar

# Expose the port the application will run on
EXPOSE 8080

# Command to run the application inside the container
ENTRYPOINT ["java", "-jar", "/app/application.jar"]
