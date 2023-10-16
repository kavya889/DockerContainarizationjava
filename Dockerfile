# Use an official OpenJDK runtime as a parent image
FROM ubuntu:20.04

# Set the working directory inside the container
RUN apt update

# Copy the Java file from your repository to the container
COPY . . 

# Compile the Java code
RUN javac hello.java

# Run the Java application
CMD ["java", "hello"]
