FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /build

# Define a build argument for the backup file
ARG ARTIFACT_NAME

# Copy the dynamically chosen backup JAR file from the build context
COPY ${ARTIFACT_NAME} /build/application.jar

# Command to run the application inside the container
ENTRYPOINT ["java", "-jar", "/build/application.jar"]

# Expose the port the application will run on
EXPOSE 8080
