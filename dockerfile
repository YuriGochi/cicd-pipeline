# Use an official Node.js runtime as a base image (using 'alpine' for a smaller footprint)
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on (change to your app's port, e.g., 3000, 8080)
EXPOSE 8080

# Define the command to run the application
CMD [ "npm", "start" ]
