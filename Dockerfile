FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /build

# Copy the JAR file from the Jenkins backup location to the Docker container
# You will copy the latest JAR file from Jenkins' backup folder during the pipeline execution

COPY demo-0.0.1-SNAPSHOT.jar /build/demo-0.0.1-SNAPSHOT.jar

# Command to run the application inside the container
ENTRYPOINT ["java", "-jar", "/build/demo-0.0.1-SNAPSHOT.jar"]

# Expose the port the application will run on
EXPOSE 8081
