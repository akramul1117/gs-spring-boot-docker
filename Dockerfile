# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="akramul@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
#ARG JAR_FILE=target/gs-spring-boot-docker-0.1.0.jar

# Add the application's jar to the container
ADD https://github.com/akramul1117/gs-spring-boot-docker/blob/master/target/gs-spring-boot-docker-0.1.0.jar app.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]