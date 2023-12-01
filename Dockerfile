# Use an official Node.js runtime as a base image
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
