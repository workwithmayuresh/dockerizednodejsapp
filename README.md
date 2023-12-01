# Dockerized Simple Node.js Web Application

This repository contains a simple Node.js web application dockerized using Docker and GitHub for source control.

## Project Structure

- **app.js**: The main file containing the simple Express.js web application.
- **package.json**: Configuration file for Node.js application, including dependencies and start script.
- **Dockerfile**: Dockerfile specifying the steps to build the Docker image.




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








