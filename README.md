# Dockerized Simple Node.js Web Application

This repository contains a simple Node.js web application dockerized using Docker and GitHub for source control.

## Project Structure

- **app.js**: The main file containing the simple Express.js web application.
- **package.json**: Configuration file for Node.js application, including dependencies and start script.
- **Dockerfile**: Dockerfile specifying the steps to build the Docker image.

Objective: Create a Dockerfile for a simple web application.

Instructions:
Imagine you have a basic web application written in Node.js.
Your task is to create a Dockerfile that builds a Docker image for this application.

The Dockerfile should:
1. Use an official Node.js base image.
2. Set the working directory to /app.
3. Copy the application code into the container.
4. Expose port 3000.
5. Use a non-root user to run the application.
6. Include any necessary dependencies and commands to start the application.
7. Use source control tool github to push you all code with docker file
8. Add readme file in github repo to explain your task and working of project explain all the command and step to create docker files
9. For web application code you can use some open source github project


## Steps and explanation to create Dockerfile .

# Use an official Node.js runtime as a base image ( using alpine here as it is smaller in size compared to normal image)
FROM node:21-alpine3.17

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install app dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Create a non-root user to run the application
RUN groupadd -r node && useradd -m -r -g node node

# Change the ownership of /app to the non-root user
RUN chown -R node:node /app

# Switch to the non-root user
USER node

# Command to run the application
CMD ["npm", "start"]








