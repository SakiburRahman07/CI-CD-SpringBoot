# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Add a volume to store logs and other output
VOLUME /tmp


COPY target/cicdspringboot.jar /app/cicdspringboot.jar

# Expose the application port (optional, depending on your app's config)
EXPOSE 8080

# Set the environment variables for PostgreSQL connection
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/postgres
ENV SPRING_DATASOURCE_USERNAME=postgres
ENV SPRING_DATASOURCE_PASSWORD=2007007

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/cicdspringboot.jar"]
