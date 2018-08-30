# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="myjavablogs@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/TodoListManagerJPA_Docker.jar 

# Add the application's jar to the container
ADD ${JAR_FILE} TodoListManagerJPA_Docker.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/TodoListManagerJPA_Docker.jar"]