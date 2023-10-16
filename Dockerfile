# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java file from your repository to the container
COPY hello.java /app/

# Compile the Java code
RUN javac hello.java

# Run the Java application
CMD ["java", "hello"]
